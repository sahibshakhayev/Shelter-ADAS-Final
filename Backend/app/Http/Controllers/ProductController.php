<?php


namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\Category;
use App\Models\Subcategory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class ProductController extends Controller
{
    // ********** Fetch All Products with Categories and Subcategories **********
    public function indexProducts(Request $request)
    {
        $query = Product::query();

        // Join subcategories and categories for sorting and fetching category ID
        $query->join('subcategories', 'products.subcategory_id', '=', 'subcategories.id')
            ->join('categories', 'subcategories.category_id', '=', 'categories.id')
            ->select('products.*', 'subcategories.name as subcategory_name', 'subcategories.category_id', 'categories.name as category_name');

        // Apply search filter
        if ($request->has('q')) {
            $search = $request->input('q');
            $query->where(function ($q) use ($search) {
                $q->where('products.title', 'like', '%' . $search . '%')
                    ->orWhere('products.description', 'like', '%' . $search . '%');
            });
        }

        // Handle sorting
        if ($request->has('_sort') && $request->has('_order')) {
            if ($request->input('_sort') == 'subcategory.category.name') {
                $query->orderBy('categories.name', $request->input('_order'));
            } elseif ($request->input('_sort') == 'subcategory.name') {
                $query->orderBy('subcategories.name', $request->input('_order'));
            } else {
                $query->orderBy($request->input('_sort'), $request->input('_order'));
            }
        }

        // Pagination
        $products = $query->paginate($request->input('perPage', 10));

        // Generate full image URLs
        foreach ($products as $product) {
            $product->image = generateFullImageUrl($product->image);
        }

        return response()->json($products);
    }





    // ********** Fetch Product by ID **********
    public function getProductById($id)
    {
        $product = Product::with('subcategory.category')->findOrFail($id);
        $product->image = generateFullImageUrl($product->image);
        return response()->json($product);
    }


    public function getSubcategoriesByCategoryId($categoryId)
    {
        $subcategories = Subcategory::where('category_id', $categoryId)->get();
        return response()->json($subcategories);
    }

    // ********** Fetch All Categories with Subcategories **********
    public function indexCategories()
    {
        $categories = Category::with('subcategories')->get();
        return response()->json($categories);
    }

    // ********** Fetch Category by ID **********
    public function getCategoryById($id)
    {
        $category = Category::with('subcategories')->findOrFail($id);
        return response()->json($category);
    }

    // ********** Fetch All Subcategories **********
    public function indexSubcategories(Request $request)
    {

        if ($request->has('category_id')) {
            $subcategories = Subcategory::where('category_id', $request->category_id)
                ->with('category')
                ->get();
        } else {

            $subcategories = Subcategory::with('category')->get();
        }

        // Return the result as JSON
        return response()->json($subcategories);
    }

    // ********** Fetch Subcategory by ID **********
    public function getSubcategoryById($id)
    {
        $subcategory = Subcategory::with('category')->findOrFail($id);
        return response()->json($subcategory);
    }

    // ********** Store a New Product **********
    public function storeProduct(Request $request)
    {
        $validatedData = $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'required|string',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg',
            'subcategory_id' => 'required|exists:subcategories,id',
            'date' => 'nullable|date',
            'client' => 'nullable|string',
            'location' => 'nullable|string',
        ]);

        // Handle the product image upload
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $imagePath = uploadImage($image, 'products');
            $validatedData['image'] = $imagePath;
        }

        $product = Product::create($validatedData);
        $product->image = generateFullImageUrl($product->image);

        return response()->json($product, 201);
    }

    // ********** Update a Product **********
    public function updateProduct(Request $request, $id)
    {
        $product = Product::findOrFail($id);

        $validatedData = $request->validate([
            'title' => 'sometimes|string|max:255',
            'description' => 'sometimes|string',
            'image' => 'sometimes|image|mimes:jpeg,png,jpg,gif,svg',
            'subcategory_id' => 'sometimes|exists:subcategories,id',
            'date' => 'nullable|date',
            'client' => 'nullable|string',
            'location' => 'nullable|string',
        ]);

        $product->update($request->except('image'));

        // Handle the product image upload if a new one is provided
        if ($request->hasFile('image')) {
            if ($product->image) {
                Storage::delete('public/' . $product->image);
            }

            $image = $request->file('image');
            $imagePath = uploadImage($image, 'products');
            $product->update(['image' => $imagePath]);
        }

        $product->image = generateFullImageUrl($product->image);

        return response()->json($product);
    }

    // ********** Delete a Product **********
    public function destroyProduct($id)
    {
        $product = Product::findOrFail($id);

        // Delete product image if exists
        if ($product->image) {
            Storage::delete('public/' . $product->image);
        }

        $product->delete();

        return response()->json(['message' => 'Product deleted successfully.']);
    }

    // ********** Store a New Category **********
    public function storeCategory(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|string|max:255',
        ]);

        $category = Category::create($validatedData);
        return response()->json($category, 201);
    }

    // ********** Update a Category **********
    public function updateCategory(Request $request, $id)
    {
        $category = Category::findOrFail($id);

        $validatedData = $request->validate([
            'name' => 'sometimes|string|max:255',
        ]);

        $category->update($validatedData);
        return response()->json($category);
    }

    // ********** Delete a Category **********
    public function destroyCategory($id)
    {
        $category = Category::with('subcategories.products')->findOrFail($id);

        // Ensure all related subcategories and products are deleted
        foreach ($category->subcategories as $subcategory) {
            foreach ($subcategory->products as $product) {
                if ($product->image) {
                    Storage::delete('public/' . $product->image);
                }
                $product->delete();
            }
            $subcategory->delete();
        }

        $category->delete();
        return response()->json(['message' => 'Category deleted successfully.']);
    }

    // ********** Store a New Subcategory **********
    public function storeSubcategory(Request $request, $categoryId)
    {
        $validatedData = $request->validate([
            'name' => 'required|string|max:255',
        ]);

        $category = Category::findOrFail($categoryId);
        $subcategory = $category->subcategories()->create($validatedData);
        return response()->json($subcategory, 201);
    }

    // ********** Update a Subcategory **********
    public function updateSubcategory(Request $request, $id)
    {
        $subcategory = Subcategory::findOrFail($id);

        $validatedData = $request->validate([
            'name' => 'sometimes|string|max:255',
            'category_id' => 'sometimes|numeric'
        ]);

        $subcategory->update($validatedData);
        return response()->json($subcategory);
    }

    // ********** Delete a Subcategory **********
    public function destroySubcategory($id)
    {
        $subcategory = Subcategory::with('products')->findOrFail($id);

        // Delete related products
        foreach ($subcategory->products as $product) {
            if ($product->image) {
                Storage::delete('public/' . $product->image);
            }
            $product->delete();
        }

        $subcategory->delete();
        return response()->json(['message' => 'Subcategory deleted successfully.']);
    }
}
