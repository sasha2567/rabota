<?php

/* @phpbb_boardannouncements/event/overall_header_content_before.html */
class __TwigTemplate_fdfdd829d17b0408d274450873fdf3b5ac0befff0118258d90bd144cdc6cdcd7 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        if ((isset($context["S_BOARD_ANNOUNCEMENT"]) ? $context["S_BOARD_ANNOUNCEMENT"] : null)) {
            // line 2
            echo "\t";
            $asset_file = "@phpbb_boardannouncements/js/boardannouncements.js";
            $asset = new \phpbb\template\asset($asset_file, $this->getEnvironment()->get_path_helper());
            if (substr($asset_file, 0, 2) !== './' && $asset->is_relative()) {
                $asset_path = $asset->get_path();                $local_file = $this->getEnvironment()->get_phpbb_root_path() . $asset_path;
                if (!file_exists($local_file)) {
                    $local_file = $this->getEnvironment()->findTemplate($asset_path);
                    $asset->set_path($local_file, true);
                $asset->add_assets_version('13');
                $asset_file = $asset->get_url();
                }
            }
            $context['definition']->append('SCRIPTS', '<script type="text/javascript" src="' . $asset_file. '"></script>

');
            // line 3
            echo "\t<div id=\"phpbb_announcement\"";
            if ((isset($context["BOARD_ANNOUNCEMENT_BGCOLOR"]) ? $context["BOARD_ANNOUNCEMENT_BGCOLOR"] : null)) {
                echo " style=\"background-color:#";
                echo (isset($context["BOARD_ANNOUNCEMENT_BGCOLOR"]) ? $context["BOARD_ANNOUNCEMENT_BGCOLOR"] : null);
                echo "\"";
            }
            echo ">
\t\t";
            // line 4
            if ((isset($context["S_BOARD_ANNOUNCEMENT_DISMISS"]) ? $context["S_BOARD_ANNOUNCEMENT_DISMISS"] : null)) {
                echo "<a href=\"";
                echo (isset($context["U_BOARD_ANNOUNCEMENT_CLOSE"]) ? $context["U_BOARD_ANNOUNCEMENT_CLOSE"] : null);
                echo "\" data-ajax=\"close_announcement\" data-overlay=\"false\" class=\"close clearfix\" title=\"";
                echo $this->env->getExtension('phpbb')->lang("BOARD_ANNOUNCEMENT_CLOSE");
                echo "\"></a>";
            }
            // line 5
            echo "\t\t<div>";
            echo (isset($context["BOARD_ANNOUNCEMENT"]) ? $context["BOARD_ANNOUNCEMENT"] : null);
            echo "</div>
\t</div>
";
        }
    }

    public function getTemplateName()
    {
        return "@phpbb_boardannouncements/event/overall_header_content_before.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  54 => 5,  46 => 4,  37 => 3,  21 => 2,  19 => 1,);
    }
}
