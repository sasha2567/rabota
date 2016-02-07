<?php
/**
*
* @package favicon
* @copyright (c) 2013 Татьяна5
* @license http://opensource.org/licenses/gpl-2.0.php GNU General Public License v2
*
*/

namespace tatiana5\favicon\event;

use Symfony\Component\EventDispatcher\EventSubscriberInterface;

/**
* Event listener
*/
class listener implements EventSubscriberInterface
{

	/** @var \phpbb\config\config */
	protected $config;

	/** @var \phpbb\template\template */
	protected $template;

	/**
	* Constructor
	* 
	* @param \phpbb\config\config $config
	* @param \phpbb\template\template $template
	*/
	public function __construct(\phpbb\config\config $config, \phpbb\template\template $template)
	{
		$this->config = $config;
		$this->template = $template;
	}
	/**
	* Assign functions defined in this class to event listeners in the core
	*
	* @return array
	* @static
	* @access public
	*/
	static public function getSubscribedEvents()
	{
		return array(
			'core.page_header_after'	=> 'favicon',
		);
	}

	public function favicon()
	{
		$this->template->assign_vars(array(
			'FAVICON_EXT'	=> $this->config['favicon_ext'],
			'FAVICON_APPLE'	=> $this->config['favicon_apple'],
		));
	}
}
