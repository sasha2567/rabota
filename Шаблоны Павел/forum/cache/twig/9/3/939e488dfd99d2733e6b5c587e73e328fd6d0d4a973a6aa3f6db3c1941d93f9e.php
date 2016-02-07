<?php

/* top_bar.html */
class __TwigTemplate_939e488dfd99d2733e6b5c587e73e328fd6d0d4a973a6aa3f6db3c1941d93f9e extends Twig_Template
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
        echo "<div id=\"top-bar\">
\t<div class=\"inner\">
\t\t<ul class=\"linklist\">
\t\t\t<li class=\"icon1 small-icon\" data-skip-responsive=\"true\"><strong>PBTech Style</strong></li>
\t\t\t<li class=\"icon2 small-icon link\"><a href=\"http://pbwow.com/forum/\">PBWoW</a></li>
\t\t\t<li class=\"icon3 small-icon link\"><a href=\"https://www.phpbb.com/\">phpBB</a></li>

\t\t\t";
        // line 8
        // line 9
        echo "\t\t\t<li class=\"icon4 small-icon link rightside\"><a href=\"#\">On the right</a></li>
\t\t</ul>
\t</div>
</div>
";
    }

    public function getTemplateName()
    {
        return "top_bar.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  29 => 9,  28 => 8,  19 => 1,);
    }
}
