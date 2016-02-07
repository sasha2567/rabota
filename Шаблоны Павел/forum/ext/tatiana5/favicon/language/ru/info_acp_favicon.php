<?php
/**
*
* favicon [Russian]
*
* @package language favicon
* @copyright (c) 2013 Татьяна5
* @license http://opensource.org/licenses/gpl-2.0.php GNU General Public License v2
*
*/

/**
* DO NOT CHANGE
*/
if (!defined('IN_PHPBB'))
{
	exit;
}

if (empty($lang) || !is_array($lang))
{
	$lang = array();
}

$lang = array_merge($lang, array(
	'ACP_FAVICON'				=> 'Favicon',
	'ACP_FAVICON_EXPLAIN'		=> 'Иконка конференции',

	'ACP_FAVICON_EXT'			=> 'Выбрать расширение файла иконки конференции',
	'ACP_FAVICON_EXT_EXPLAIN'	=> '<strong>favicon.ico</strong> или <strong>favicon.png</strong>',
	'ACP_FAVICON_APPLE'			=> 'Включить иконку для apple',
	'ACP_FAVICON_APPLE_EXPLAIN'	=> '<strong>apple_touch_icon.png</strong>',

	'ACP_FAVICON_NOT_FOUND'		=> 'Favicon не найден',
));
