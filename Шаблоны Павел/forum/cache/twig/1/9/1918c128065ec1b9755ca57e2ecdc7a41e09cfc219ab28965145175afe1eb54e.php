<?php

/* @tatiana5_favicon/event/overall_header_head_append.html */
class __TwigTemplate_1918c128065ec1b9755ca57e2ecdc7a41e09cfc219ab28965145175afe1eb54e extends Twig_Template
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
        if (((isset($context["FAVICON_EXT"]) ? $context["FAVICON_EXT"] : null) == "ico")) {
            // line 2
            echo "\t<link rel=\"shortcut icon\" href=\"";
            echo (isset($context["BOARD_URL"]) ? $context["BOARD_URL"] : null);
            echo "ext/tatiana5/favicon/favicon.ico\" />
";
        } elseif ((        // line 3
(isset($context["FAVICON_EXT"]) ? $context["FAVICON_EXT"] : null) == "png")) {
            // line 4
            echo "\t<link rel=\"shortcut icon\" type=\"image/png\" href=\"";
            echo (isset($context["BOARD_URL"]) ? $context["BOARD_URL"] : null);
            echo "ext/tatiana5/favicon/favicon.png\" />
";
        }
        // line 6
        echo "\t
";
        // line 7
        if ((isset($context["FAVICON_APPLE"]) ? $context["FAVICON_APPLE"] : null)) {
            echo "\t
\t<link rel=\"apple-touch-icon\" href=\"";
            // line 8
            echo (isset($context["BOARD_URL"]) ? $context["BOARD_URL"] : null);
            echo "ext/tatiana5/favicon/apple_touch_icon.png\" />
";
        }
    }

    public function getTemplateName()
    {
        return "@tatiana5_favicon/event/overall_header_head_append.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  41 => 8,  37 => 7,  34 => 6,  28 => 4,  26 => 3,  21 => 2,  19 => 1,);
    }
}
