<?php
/**
*
* favicon [English]
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
	'ACP_FAVICON_EXPLAIN'		=> 'Board favicon',

	'ACP_FAVICON_EXT'			=> 'Select the file extension of board favicon',
	'ACP_FAVICON_EXT_EXPLAIN'	=> '<strong>favicon.ico</strong> or <strong>favicon.png</strong>',
	'ACP_FAVICON_APPLE'			=> 'Enable favicon for apple',
	'ACP_FAVICON_APPLE_EXPLAIN'	=> '<strong>apple_touch_icon.png</strong>',

	'ACP_FAVICON_NOT_FOUND'		=> 'Favicon not found',
));
