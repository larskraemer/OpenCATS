<?php
/**
 * CATS
 * Translation Helper Functions
 *
 * Provides convenient functions for translating strings in templates and code
 */

/**
 * Echo a translated string
 * Shorthand for: echo Translations::get($key);
 * 
 * @param string $key The translation key
 */
function _te($key)
{
    echo Translations::get($key);
}

/**
 * Return a translated string (without echoing)
 * Shorthand for: return Translations::get($key);
 * 
 * @param string $key The translation key
 * @return string The translated string
 */
function _t($key)
{
    return Translations::get($key);
}
?>
