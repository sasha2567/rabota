<?php
/**
*
* @package favicon
* @copyright (c) 2014 Татьяна5
* @license http://opensource.org/licenses/gpl-license.php GNU Public License
*
*/

namespace tatiana5\favicon\migrations\v0xx;

class v_0_0_3 extends \phpbb\db\migration\migration
{
	public function effectively_installed()
	{
		return isset($this->config['favicon_version']) && version_compare($this->config['favicon_version'], '0.0.3', '>=');
	}

	static public function depends_on()
	{
		return array('\tatiana5\favicon\migrations\v0xx\v_0_0_2');
	}

	public function update_data()
	{
		return array(
			// Add configs
			array('config.add', array('favicon_apple', '1')),

			// Current version
			array('config.update', array('favicon_version', '0.0.3')),
		);
	}
}
