<?php
/**
*
* @package favicon
* @copyright (c) 2014 Татьяна5
* @license http://opensource.org/licenses/gpl-license.php GNU Public License
*
*/

namespace tatiana5\favicon\migrations\v0xx;

class v_0_0_2 extends \phpbb\db\migration\migration
{
	public function effectively_installed()
	{
		return isset($this->config['favicon_version']) && version_compare($this->config['favicon_version'], '0.0.2', '>=');
	}

	static public function depends_on()
	{
			return array('\phpbb\db\migration\data\v310\dev');
	}

	public function update_data()
	{
		return array(
			// Add configs
			array('config.add', array('favicon_ext', 'ico')),

			// Current version
			array('config.add', array('favicon_version', '0.0.2')),

			// Add ACP modules
			array('module.add', array('acp', 'ACP_CAT_DOT_MODS', 'ACP_FAVICON')),
			array('module.add', array('acp', 'ACP_FAVICON', array(
					'module_basename'	=> '\tatiana5\favicon\acp\favicon_module',
					'module_langname'	=> 'ACP_FAVICON_EXPLAIN',
					'module_mode'		=> 'config_favicon',
					'module_auth'		=> 'acl_a_',
			))),
		);
	}
}
