<?php

/* @bb3mobi_highslide/event/overall_header_head_append.html */
class __TwigTemplate_cb6fcb3d99c0511e6e3796c773b0f68bd5b288564d4078801b97fcc1edc332ae extends Twig_Template
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
        if ((((isset($context["S_VIEWTOPIC"]) ? $context["S_VIEWTOPIC"] : null) || (isset($context["S_IN_UCP"]) ? $context["S_IN_UCP"] : null)) || (isset($context["S_IN_POSTING"]) ? $context["S_IN_POSTING"] : null))) {
            // line 2
            echo "<link rel=\"stylesheet\" type=\"text/css\" href=\"";
            echo (isset($context["BOARD_URL"]) ? $context["BOARD_URL"] : null);
            echo "ext/bb3mobi/highslide/highslide.css\" />
";
        }
    }

    public function getTemplateName()
    {
        return "@bb3mobi_highslide/event/overall_header_head_append.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  21 => 2,  19 => 1,);
    }
}
