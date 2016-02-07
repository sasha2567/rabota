<?php
/**
*
* @package favicon
* @copyright (c) 2014 Татьяна5
* @license http://opensource.org/licenses/gpl-license.php GNU Public License
*
*/

namespace tatiana5\favicon\acp;

class favicon_module
{
	var $u_action;
	var $max_rep_id;
	var $step = 1000;

	function main($id, $mode)
	{
		global $cache, $config, $db, $user, $auth, $template, $request;
		global $phpbb_root_path, $phpEx, $phpbb_admin_path, $phpbb_container;

		$this->page_title = 'ACP_FAVICON';
		$this->tpl_name = 'acp_favicon';

		$submit = (isset($_POST['submit'])) ? true : false;
		$form_key = 'config_favicon';
		add_form_key($form_key);

		$display_vars = array(
			'title'	=> 'ACP_FAVICON',
			'vars'	=> array(
				'legend1'		=> '',
				'favicon_ext'		=> array('lang' => 'ACP_FAVICON_EXT', 'validate' => 'string', 'type' => 'select', 'method' => 'favicon_select', 'explain' => true),
				'favicon_apple'		=> array('lang' => 'ACP_FAVICON_APPLE', 'validate' => 'bool', 'type' => 'radio:yes_no', 'method' => false, 'explain' => true),

				'legend2'					=> 'ACP_SUBMIT_CHANGES',
			),
		);

		if (isset($display_vars['lang']))
		{
			$user->add_lang($display_vars['lang']);
		}

		$this->new_config = $config;
		$cfg_array = (isset($_REQUEST['config'])) ? utf8_normalize_nfc($request->variable('config', array('' => ''), true)) : $this->new_config;
		$error = array();

		// We validate the complete config if wished
		validate_config_vars($display_vars['vars'], $cfg_array, $error);

		if ($submit && !check_form_key($form_key))
		{
			$error[] = $user->lang['FORM_INVALID'];
		}
		// Do not write values if there is an error
		if (sizeof($error))
		{
			$submit = false;
		}

		// We go through the display_vars to make sure no one is trying to set variables he/she is not allowed to...
		foreach ($display_vars['vars'] as $config_name => $null)
		{
			if (!isset($cfg_array[$config_name]) || strpos($config_name, 'legend') !== false)
			{
				continue;
			}

			$this->new_config[$config_name] = $config_value = $cfg_array[$config_name];

			if ($submit)
			{
				$config->set($config_name, $config_value);
			}
		}

		if ($submit)
		{
			trigger_error($user->lang['CONFIG_UPDATED'] . adm_back_link($this->u_action));
		}

		$this->page_title = $display_vars['title'];

		$template->assign_vars(array(
			'L_TITLE'			=> $user->lang[$display_vars['title']],
			'L_TITLE_EXPLAIN'	=> $user->lang[$display_vars['title'] . '_EXPLAIN'],

			'S_ERROR'			=> (sizeof($error)) ? true : false,
			'ERROR_MSG'			=> implode('<br />', $error),
		));

		// Output relevant page
		foreach ($display_vars['vars'] as $config_key => $vars)
		{
			if (!is_array($vars) && strpos($config_key, 'legend') === false)
			{
				continue;
			}

			if (strpos($config_key, 'legend') !== false)
			{
				$template->assign_block_vars('options', array(
					'S_LEGEND'		=> true,
					'LEGEND'		=> (isset($user->lang[$vars])) ? $user->lang[$vars] : $vars)
				);

				continue;
			}

			$type = explode(':', $vars['type']);

			$l_explain = '';
			if ($vars['explain'] && isset($vars['lang_explain']))
			{
				$l_explain = (isset($user->lang[$vars['lang_explain']])) ? $user->lang[$vars['lang_explain']] : $vars['lang_explain'];
			}
			else if ($vars['explain'])
			{
				$l_explain = (isset($user->lang[$vars['lang'] . '_EXPLAIN'])) ? $user->lang[$vars['lang'] . '_EXPLAIN'] : '';
			}

			$content = build_cfg_template($type, $config_key, $this->new_config, $config_key, $vars);

			if (empty($content))
			{
				continue;
			}

			$template->assign_block_vars('options', array(
				'KEY'			=> $config_key,
				'TITLE'			=> (isset($user->lang[$vars['lang']])) ? $user->lang[$vars['lang']] : $vars['lang'],
				'S_EXPLAIN'		=> $vars['explain'],
				'TITLE_EXPLAIN'	=> $l_explain,
				'CONTENT'		=> $content,
				)
			);

			unset($display_vars['vars'][$config_key]);
		}
	}

	function favicon_select()
	{
		global $config, $user, $phpbb_root_path;

		$fav_flag = true;
		$favicon_options = '';
		if(file_exists($phpbb_root_path . 'ext/tatiana5/favicon/favicon.ico'))
		{
			$selected = ($config['favicon_ext'] == 'ico') ? ' selected="selected"' : '';
			$favicon_options .= '<option value="ico"' . $selected . '>ico</option>';
			$fav_flag = false;
		}
		if(file_exists($phpbb_root_path . 'ext/tatiana5/favicon/favicon.png'))
		{
			$selected = ($config['favicon_ext'] == 'png') ? ' selected="selected"' : '';
			$favicon_options .= '<option value="png"' . $selected . '>png</option>';
			$fav_flag = false;
		}

		if($fav_flag)
		{
			$favicon_options .= '<option val="">' . $user->lang['ACP_FAVICON_NOT_FOUND'] . '</option>';
		}

		return $favicon_options;
	}
}
