<?php
/**
 * CATS
 * Translations Library
 *
 * Provides multi-language support for OpenCATS
 */

class Translations
{
    private static $currentLanguage = 'en';
    private static $translations = array();
    
    /**
     * Initialize translations with the configured language
     */
    public static function initialize()
    {
        if (defined('CATS_LANGUAGE')) {
            self::$currentLanguage = CATS_LANGUAGE;
        }
        
        self::loadTranslations(self::$currentLanguage);
    }
    
    /**
     * Load translation strings for the specified language
     * 
     * @param string $language Language code (e.g., 'de', 'en')
     */
    private static function loadTranslations($language)
    {
        // Load language-specific translation file if it exists
        $translationFile = LEGACY_ROOT . '/lib/i18n/' . $language . '.php';
        
        if (file_exists($translationFile)) {
            include($translationFile);
            if (isset($translations)) {
                self::$translations = $translations;
            }
        }
    }
    
    /**
     * Get a translated string
     * 
     * @param string $key The translation key
     * @return string The translated string, or the key if translation not found
     */
    public static function get($key)
    {
        if (isset(self::$translations[$key])) {
            return self::$translations[$key];
        }
        return $key;
    }
    
    /**
     * Get current language
     * 
     * @return string Current language code
     */
    public static function getCurrentLanguage()
    {
        return self::$currentLanguage;
    }
}

// Initialize translations on class load
Translations::initialize();
?>
