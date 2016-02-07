<?php
/**
*
* @package favicon
* @copyright (c) 2014 Татьяна5
* @license http://opensource.org/licenses/gpl-license.php GNU Public License
*
*/

namespace tatiana5\favicon\acp;

class favicon_info
{
	function module()
	{
		return array(
			'filename'	=> '\tatiana5\favicon\acp\favicon_module',
			'title'		=> 'ACP_QUICKREPLY',
			'version'	=> '0.0.2',
			'modes'		=> array(
				'config_favicon'		=> array('title' => 'ACP_FAVICON_CONFIG', 'auth' => 'acl_a_', 'cat' => array('ACP_FAVICON_CONFIG')),
			),
		);
	}
}
