<?php

/* overall_header.html */
class __TwigTemplate_c754a01cb689adc91cf3f8993d47d8598c724e95ee06d0f117528ac3b7590f05 extends Twig_Template
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
        echo "<!DOCTYPE html>
<html dir=\"";
        // line 2
        echo (isset($context["S_CONTENT_DIRECTION"]) ? $context["S_CONTENT_DIRECTION"] : null);
        echo "\" lang=\"";
        echo (isset($context["S_USER_LANG"]) ? $context["S_USER_LANG"] : null);
        echo "\">
<head>
<meta charset=\"utf-8\">
<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />
";
        // line 6
        if ((isset($context["META"]) ? $context["META"] : null)) {
            echo (isset($context["META"]) ? $context["META"] : null);
        }
        // line 7
        echo "<title>";
        echo (isset($context["PAGE_TITLE"]) ? $context["PAGE_TITLE"] : null);
        echo "</title>

<link href=\"style/admin.css?assets_version=";
        // line 9
        echo (isset($context["T_ASSETS_VERSION"]) ? $context["T_ASSETS_VERSION"] : null);
        echo "\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\" />

<script type=\"text/javascript\">
// <![CDATA[
var jump_page = '";
        // line 13
        echo addslashes($this->env->getExtension('phpbb')->lang("JUMP_PAGE"));
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "';
var on_page = '";
        // line 14
        echo (isset($context["CURRENT_PAGE"]) ? $context["CURRENT_PAGE"] : null);
        echo "';
var per_page = '";
        // line 15
        echo (isset($context["PER_PAGE"]) ? $context["PER_PAGE"] : null);
        echo "';
var base_url = '";
        // line 16
        echo twig_escape_filter($this->env, (isset($context["BASE_URL"]) ? $context["BASE_URL"] : null), "js");
        echo "';

/**
* Jump to page
*/
function jumpto()
{
\tvar page = prompt(jump_page, on_page);

\tif (page !== null && !isNaN(page) && page == Math.floor(page) && page > 0)
\t{
\t\tif (base_url.indexOf('?') == -1)
\t\t{
\t\t\tdocument.location.href = base_url + '?start=' + ((page - 1) * per_page);
\t\t}
\t\telse
\t\t{
\t\t\tdocument.location.href = base_url.replace(/&amp;/g, '&') + '&start=' + ((page - 1) * per_page);
\t\t}
\t}
}

/**
* Mark/unmark checkboxes
* id = ID of parent container, name = name prefix, state = state [true/false]
*/
function marklist(id, name, state)
{
\tvar parent = document.getElementById(id) || document[id];

\tif (!parent)
\t{
\t\treturn;
\t}

\tvar rb = parent.getElementsByTagName('input');
\t
\tfor (var r = 0; r < rb.length; r++)
\t{
\t\tif (rb[r].name.substr(0, name.length) == name)
\t\t{
\t\t\trb[r].checked = state;
\t\t}
\t}
}

/**
* Find a member
*/
function find_username(url)
{
\tpopup(url, 760, 570, '_usersearch');
\treturn false;
}

/**
* Window popup
*/
function popup(url, width, height, name)
{
\tif (!name)
\t{
\t\tname = '_popup';
\t}

\twindow.open(url.replace(/&amp;/g, '&'), name, 'height=' + height + ',resizable=yes,scrollbars=yes, width=' + width);
\treturn false;
}

// ]]>
</script>

";
        // line 88
        $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
        $this->env->setNamespaceLookUpOrder(array('phpbb_boardannouncements', '__main__'));
        $this->env->loadTemplate('@phpbb_boardannouncements/event/acp_overall_header_head_append.html')->display($context);
        $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        // line 89
        echo "
";
        // line 90
        echo $this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "STYLESHEETS", array());
        echo "

";
        // line 92
        // line 93
        echo "
</head>

<body class=\"";
        // line 96
        echo (isset($context["S_CONTENT_DIRECTION"]) ? $context["S_CONTENT_DIRECTION"] : null);
        echo " ";
        echo (isset($context["BODY_CLASS"]) ? $context["BODY_CLASS"] : null);
        echo " nojs\">

";
        // line 98
        // line 99
        echo "
<div id=\"wrap\">
\t<div id=\"page-header\">
\t\t<h1>";
        // line 102
        echo $this->env->getExtension('phpbb')->lang("ADMIN_PANEL");
        echo "</h1>
\t\t<p><a href=\"";
        // line 103
        echo (isset($context["U_ADM_INDEX"]) ? $context["U_ADM_INDEX"] : null);
        echo "\">";
        echo $this->env->getExtension('phpbb')->lang("ADMIN_INDEX");
        echo "</a> &bull; <a href=\"";
        echo (isset($context["U_INDEX"]) ? $context["U_INDEX"] : null);
        echo "\">";
        echo $this->env->getExtension('phpbb')->lang("FORUM_INDEX");
        echo "</a></p>
\t\t<p id=\"skip\"><a href=\"#acp\">";
        // line 104
        echo $this->env->getExtension('phpbb')->lang("SKIP");
        echo "</a></p>
\t</div>
\t
\t<div id=\"page-body\">
\t\t<div id=\"tabs\">
\t\t\t<ul>
\t\t\t";
        // line 110
        $context['_parent'] = (array) $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "t_block1", array()));
        foreach ($context['_seq'] as $context["_key"] => $context["t_block1"]) {
            // line 111
            echo "\t\t\t\t<li class=\"tab";
            if ($this->getAttribute($context["t_block1"], "S_SELECTED", array())) {
                echo " activetab";
            }
            echo "\"><a href=\"";
            echo $this->getAttribute($context["t_block1"], "U_TITLE", array());
            echo "\">";
            echo $this->getAttribute($context["t_block1"], "L_TITLE", array());
            echo "</a></li>
\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['t_block1'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 113
        echo "\t\t\t</ul>
\t\t</div>

\t\t<div id=\"acp\">
\t\t\t\t<div id=\"content\">
\t\t\t\t\t<div id=\"menu\">
\t\t\t\t\t\t<p>";
        // line 119
        echo $this->env->getExtension('phpbb')->lang("LOGGED_IN_AS");
        echo "<br /><strong>";
        echo (isset($context["USERNAME"]) ? $context["USERNAME"] : null);
        echo "</strong> [&nbsp;<a href=\"";
        echo (isset($context["U_LOGOUT"]) ? $context["U_LOGOUT"] : null);
        echo "\">";
        echo $this->env->getExtension('phpbb')->lang("LOGOUT");
        echo "</a>&nbsp;][&nbsp;<a href=\"";
        echo (isset($context["U_ADM_LOGOUT"]) ? $context["U_ADM_LOGOUT"] : null);
        echo "\">";
        echo $this->env->getExtension('phpbb')->lang("ADM_LOGOUT");
        echo "</a>&nbsp;]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
\t\t\t\t\t\t";
        // line 120
        $value = 0;
        $context['definition']->set('LI_USED', $value);
        // line 121
        echo "\t\t\t\t\t\t";
        $context['_parent'] = (array) $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "l_block1", array()));
        foreach ($context['_seq'] as $context["_key"] => $context["l_block1"]) {
            // line 122
            echo "\t\t\t\t\t\t\t";
            if ($this->getAttribute($context["l_block1"], "S_SELECTED", array())) {
                // line 123
                echo "\t
\t\t\t\t\t\t";
                // line 124
                $context['_parent'] = (array) $context;
                $context['_seq'] = twig_ensure_traversable($this->getAttribute($context["l_block1"], "l_block2", array()));
                foreach ($context['_seq'] as $context["_key"] => $context["l_block2"]) {
                    // line 125
                    echo "\t\t\t\t\t\t\t";
                    if (twig_length_filter($this->env, $this->getAttribute($context["l_block2"], "l_block3", array()))) {
                        // line 126
                        echo "\t\t\t\t\t\t\t";
                        if ($this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "LI_USED", array())) {
                            echo "</ul></div>";
                        }
                        // line 127
                        echo "\t\t\t\t\t\t\t<div class=\"menu-block\">
\t\t\t\t\t\t\t\t<a class=\"header\" href=\"javascript:void(0);\">";
                        // line 128
                        echo $this->getAttribute($context["l_block2"], "L_TITLE", array());
                        echo "</a>
\t\t\t\t\t\t\t\t<ul>
\t\t\t\t\t\t\t";
                        // line 130
                        $value = 1;
                        $context['definition']->set('LI_USED', $value);
                        // line 131
                        echo "\t\t\t\t\t\t\t";
                    }
                    // line 132
                    echo "\t
\t\t\t\t\t\t\t";
                    // line 133
                    $context['_parent'] = (array) $context;
                    $context['_seq'] = twig_ensure_traversable($this->getAttribute($context["l_block2"], "l_block3", array()));
                    foreach ($context['_seq'] as $context["_key"] => $context["l_block3"]) {
                        // line 134
                        echo "\t\t\t\t\t\t\t\t<li";
                        if ($this->getAttribute($context["l_block3"], "S_SELECTED", array())) {
                            echo " id=\"activemenu\"";
                        }
                        echo "><a href=\"";
                        echo $this->getAttribute($context["l_block3"], "U_TITLE", array());
                        echo "\"><span>";
                        echo $this->getAttribute($context["l_block3"], "L_TITLE", array());
                        echo "</span></a></li>
\t\t\t\t\t\t\t\t";
                        // line 135
                        $value = 1;
                        $context['definition']->set('LI_USED', $value);
                        // line 136
                        echo "\t\t\t\t\t\t\t";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['l_block3'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 137
                    echo "\t\t\t\t\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['l_block2'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 138
                echo "\t\t\t\t\t\t
\t\t\t\t\t\t\t";
            }
            // line 140
            echo "\t\t\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['l_block1'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 141
        echo "\t\t\t\t\t\t";
        if ($this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "LI_USED", array())) {
            // line 142
            echo "\t\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t";
        }
        // line 145
        echo "\t\t\t\t\t</div>
\t
\t\t\t\t\t<div id=\"main\">
\t\t\t\t\t\t<div class=\"main\">
";
    }

    public function getTemplateName()
    {
        return "overall_header.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  323 => 145,  318 => 142,  315 => 141,  309 => 140,  305 => 138,  299 => 137,  293 => 136,  290 => 135,  279 => 134,  275 => 133,  272 => 132,  269 => 131,  266 => 130,  261 => 128,  258 => 127,  253 => 126,  250 => 125,  246 => 124,  243 => 123,  240 => 122,  235 => 121,  232 => 120,  218 => 119,  210 => 113,  195 => 111,  191 => 110,  182 => 104,  172 => 103,  168 => 102,  163 => 99,  162 => 98,  155 => 96,  150 => 93,  149 => 92,  144 => 90,  141 => 89,  136 => 88,  61 => 16,  57 => 15,  53 => 14,  48 => 13,  41 => 9,  35 => 7,  31 => 6,  22 => 2,  19 => 1,);
    }
}
