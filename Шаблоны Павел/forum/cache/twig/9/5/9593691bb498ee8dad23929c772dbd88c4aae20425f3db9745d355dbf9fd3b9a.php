<?php

/* @rmcgirr83_elonw/event/overall_header_head_append.html */
class __TwigTemplate_9593691bb498ee8dad23929c772dbd88c4aae20425f3db9745d355dbf9fd3b9a extends Twig_Template
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
        if ((isset($context["S_ELONW"]) ? $context["S_ELONW"] : null)) {
            // line 2
            echo "\t";
            if ((isset($context["S_ALLOW_CDN"]) ? $context["S_ALLOW_CDN"] : null)) {
                // line 3
                echo "\t<link href=\"//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css\" rel=\"stylesheet\">
\t";
                // line 4
                $asset_file = "@rmcgirr83_elonw/elonw.css";
                $asset = new \phpbb\template\asset($asset_file, $this->getEnvironment()->get_path_helper());
                if (substr($asset_file, 0, 2) !== './' && $asset->is_relative()) {
                    $asset_path = $asset->get_path();                    $local_file = $this->getEnvironment()->get_phpbb_root_path() . $asset_path;
                    if (!file_exists($local_file)) {
                        $local_file = $this->getEnvironment()->findTemplate($asset_path);
                        $asset->set_path($local_file, true);
                    $asset->add_assets_version('13');
                    $asset_file = $asset->get_url();
                    }
                }
                $context['definition']->append('STYLESHEETS', '<link href="' . $asset_file . '" rel="stylesheet" type="text/css" media="screen" />
');
                // line 5
                echo "\t";
            }
        }
    }

    public function getTemplateName()
    {
        return "@rmcgirr83_elonw/event/overall_header_head_append.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  41 => 5,  27 => 4,  24 => 3,  21 => 2,  19 => 1,);
    }
}
