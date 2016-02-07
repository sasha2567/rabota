<?php

/* captcha_recaptcha.html */
class __TwigTemplate_4f55553e2d2a8244e115a9578f7fc01c646638e1bd568fd77d508c3baae2668d extends Twig_Template
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
        if (((isset($context["S_TYPE"]) ? $context["S_TYPE"] : null) == 1)) {
            // line 2
            echo "<div class=\"panel captcha-panel\">
\t<div class=\"inner\">

\t<h3 class=\"captcha-title\">";
            // line 5
            echo $this->env->getExtension('phpbb')->lang("CONFIRMATION");
            echo "</h3>
\t<p>";
            // line 6
            echo $this->env->getExtension('phpbb')->lang("CONFIRM_EXPLAIN");
            echo "</p>

\t<fieldset class=\"fields2\">
";
        }
        // line 10
        echo "
";
        // line 11
        if ((isset($context["S_RECAPTCHA_AVAILABLE"]) ? $context["S_RECAPTCHA_AVAILABLE"] : null)) {
            // line 12
            echo "\t<dl>
\t<dt><label>";
            // line 13
            echo $this->env->getExtension('phpbb')->lang("CONFIRM_CODE");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo "</label><br /><span>";
            echo $this->env->getExtension('phpbb')->lang("RECAPTCHA_EXPLAIN");
            echo "</span></dt>
\t<dd class=\"captcha\">
\t\t<script>
\t\tvar RecaptchaOptions = {
\t\t\tlang : '";
            // line 17
            echo addslashes($this->env->getExtension('phpbb')->lang("RECAPTCHA_LANG"));
            echo "',
\t\t\ttheme : 'clean',
\t\t\ttabindex : ";
            // line 19
            if ($this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "CAPTCHA_TAB_INDEX", array())) {
                echo $this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "CAPTCHA_TAB_INDEX", array());
            } else {
                echo "10";
            }
            // line 20
            echo "\t\t};
\t\t</script>
\t\t<script src=\"";
            // line 22
            echo (isset($context["RECAPTCHA_SERVER"]) ? $context["RECAPTCHA_SERVER"] : null);
            echo "/challenge?k=";
            echo (isset($context["RECAPTCHA_PUBKEY"]) ? $context["RECAPTCHA_PUBKEY"] : null);
            echo (isset($context["RECAPTCHA_ERRORGET"]) ? $context["RECAPTCHA_ERRORGET"] : null);
            echo "\"></script>

\t\t<noscript>
\t\t<div>
\t\t\t<object data=\"";
            // line 26
            echo (isset($context["RECAPTCHA_SERVER"]) ? $context["RECAPTCHA_SERVER"] : null);
            echo "/noscript?k=";
            echo (isset($context["RECAPTCHA_PUBKEY"]) ? $context["RECAPTCHA_PUBKEY"] : null);
            echo (isset($context["RECAPTCHA_ERRORGET"]) ? $context["RECAPTCHA_ERRORGET"] : null);
            echo "\" type=\"text/html\" height=\"300\" width=\"500\"></object><br />
\t\t\t<textarea name=\"recaptcha_challenge_field\" rows=\"3\" cols=\"40\"></textarea>
\t\t\t<input type=\"hidden\" name=\"recaptcha_response_field\" value=\"manual_challenge\" />
\t\t</div>
\t\t</noscript>

\t\t<a href=\"http://www.google.com/intl/";
            // line 32
            echo addslashes($this->env->getExtension('phpbb')->lang("RECAPTCHA_LANG"));
            echo "/policies/\" target=\"_blank\" class=\"recaptcha-responsive\" style=\"display: none\"><img alt=\"\" width=\"71\" height=\"36\" src=\"";
            echo (isset($context["RECAPTCHA_SERVER"]) ? $context["RECAPTCHA_SERVER"] : null);
            echo "/img/clean/logo.png\"></a>
\t</dd>
\t</dl>
";
        } else {
            // line 36
            echo $this->env->getExtension('phpbb')->lang("RECAPTCHA_NOT_AVAILABLE");
            echo "
";
        }
        // line 38
        echo "
";
        // line 39
        if (((isset($context["S_TYPE"]) ? $context["S_TYPE"] : null) == 1)) {
            // line 40
            echo "\t</fieldset>
\t</div>
</div>
";
        }
    }

    public function getTemplateName()
    {
        return "captcha_recaptcha.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  111 => 40,  109 => 39,  106 => 38,  101 => 36,  92 => 32,  80 => 26,  70 => 22,  66 => 20,  60 => 19,  55 => 17,  45 => 13,  42 => 12,  40 => 11,  37 => 10,  30 => 6,  26 => 5,  21 => 2,  19 => 1,);
    }
}
