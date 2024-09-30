<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Language;
use App\Models\Translation;

class TranslationSeeder extends Seeder
{
    public function run(): void
    {
        // Fetch language IDs for 'az' and 'ru'
        $azLangId = Language::where('code', 'az')->first()->id;
        $ruLangId = Language::where('code', 'ru')->first()->id;

        // Define translations using the original English text as the key
        $translations = [
            // About Us
            'About EMS Contracting' => [
                'az' => 'EMS Müqaviləsinin Haqqında',
                'ru' => 'О Контракте EMS',
            ],
            'EMS Contracting is a leading provider of ...' => [
                'az' => 'EMS Müqaviləsi aparıcı təchizatçıdır...',
                'ru' => 'EMS Контракт - ведущий поставщик...',
            ],
            'Founded by Mick Donkin and Kris Armstrong in 2013...' => [
                'az' => 'Mick Donkin və Kris Armstrong tərəfindən 2013-cü ildə təsis edilmişdir...',
                'ru' => 'Основана Миком Донкином и Крисом Армстронгом в 2013 году...',
            ],
            // Brand Values
            'Integrity' => [
                'az' => 'Dürüstlük',
                'ru' => 'Честность',
            ],
            'Acting with strong ethics is a priority for everyone...' => [
                'az' => 'Güclü etika ilə hərəkət etmək hər kəs üçün önəmlidir...',
                'ru' => 'Действовать с сильной этикой является приоритетом для всех...',
            ],
            'Honesty' => [
                'az' => 'Dürüstlük',
                'ru' => 'Честность',
            ],
            'It’s not just the best policy, it’s a core business practice...' => [
                'az' => 'Bu, yalnız ən yaxşı siyasət deyil, həm də əsas iş təcrübəsidir...',
                'ru' => 'Это не только лучшая политика, это основной бизнес-практика...',
            ],
            // Blog
            'First Blog Post' => [
                'az' => 'Birinci Bloq Yazısı',
                'ru' => 'Первый Пост в Блоге',
            ],
            'Introduction to our company' => [
                'az' => 'Şirkətimizə giriş',
                'ru' => 'Введение в нашу компанию',
            ],
            'Second Blog Post' => [
                'az' => 'İkinci Bloq Yazısı',
                'ru' => 'Второй Пост в Блоге',
            ],
            'New services available' => [
                'az' => 'Yeni xidmətlər mövcuddur',
                'ru' => 'Новые услуги доступны',
            ],
            // Contacting
            'Mick Doe' => [
                'az' => 'Mick Doe',
                'ru' => 'Мик Доэ',
            ],
            'Kriss Smith' => [
                'az' => 'Kriss Smith',
                'ru' => 'Крисс Смит',
            ],
            // Partners
            'Partner One Logo' => [
                'az' => 'Tərəfdaş Bir Loqosu',
                'ru' => 'Логотип Партнер Один',
            ],
            'Partner Two Logo' => [
                'az' => 'Tərəfdaş İki Loqosu',
                'ru' => 'Логотип Партнер Два',
            ],
            // Projects
            'Project One' => [
                'az' => 'Birinci Layihə',
                'ru' => 'Первый Проект',
            ],
            'This is the first project description.' => [
                'az' => 'Bu, birinci layihənin təsviridir.',
                'ru' => 'Это описание первого проекта.',
            ],
            'Project Two' => [
                'az' => 'İkinci Layihə',
                'ru' => 'Второй Проект',
            ],
            'This is the second project description.' => [
                'az' => 'Bu, ikinci layihənin təsviridir.',
                'ru' => 'Это описание второго проекта.',
            ],
            // Services
            'Service One' => [
                'az' => 'Birinci Xidmət',
                'ru' => 'Первый Сервис',
            ],
            'This is the first service description.' => [
                'az' => 'Bu, birinci xidmətin təsviridir.',
                'ru' => 'Это описание первой услуги.',
            ],
            'Service Two' => [
                'az' => 'İkinci Xidmət',
                'ru' => 'Второй Сервис',
            ],
            'This is the second service description.' => [
                'az' => 'Bu, ikinci xidmətin təsviridir.',
                'ru' => 'Это описание второй услуги.',
            ],
            // Settings
            'EMS Contacting' => [
                'az' => 'EMS Müqaviləsi',
                'ru' => 'EMS Контракт',
            ],
            'Delivering first-class commercial maintenance nationwide 24/7' => [
                'az' => 'Birinci sinif kommersiya baxımını 24/7 təmin edirik',
                'ru' => 'Предоставление первоклассного коммерческого обслуживания круглосуточно',
            ],
            'ADAS Shelter' => [
                'az' => 'ADAS Sığınacağı',
                'ru' => 'АДАС Убежище',
            ],
            'Made with &heart by <b>Deepak</b> & <b>Creative Tweaks</b> for a better web' => [
                'az' => 'Daha yaxşı bir veb üçün &heart ilə <b>Deepak</b> və <b>Creative Tweaks</b> tərəfindən hazırlandı',
                'ru' => 'Сделано с &heart <b>Deepak</b> и <b>Creative Tweaks</b> для лучшего интернета',
            ],
        ];

        // Insert translations into the database
        foreach ($translations as $englishText => $translation) {
            // Azerbaijani translation
            Translation::create([
                'key' => $englishText,
                'value' => $translation['az'],
                'language_id' => $azLangId,
            ]);

            // Russian translation
            Translation::create([
                'key' => $englishText,
                'value' => $translation['ru'],
                'language_id' => $ruLangId,
            ]);
        }
    }
}
