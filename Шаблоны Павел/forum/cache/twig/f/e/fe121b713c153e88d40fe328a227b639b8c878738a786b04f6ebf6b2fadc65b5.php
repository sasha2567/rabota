<?php

/* @bb3mobi_highslide/event/overall_footer_after.html */
class __TwigTemplate_fe121b713c153e88d40fe328a227b639b8c878738a786b04f6ebf6b2fadc65b5 extends Twig_Template
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
            echo "<script type=\"text/javascript\" src=\"";
            echo (isset($context["BOARD_URL"]) ? $context["BOARD_URL"] : null);
            echo "ext/bb3mobi/highslide/highslide-full.min.js\"></script>
<script type=\"text/javascript\">
hs.graphicsDir = '";
            // line 4
            echo (isset($context["BOARD_URL"]) ? $context["BOARD_URL"] : null);
            echo "ext/bb3mobi/highslide/graphics/';
hs.align = 'center';
hs.transitions = ['expand', 'crossfade'];
hs.fadeInOut = true;
hs.dimmingOpacity = 0.8;
hs.outlineType = 'rounded-white';
hs.captionEval = 'this.thumb.title';
// This value needs to be set to false, to solve the issue with the highly increasing view counts.
hs.continuePreloading = false;
// Add the slideshow providing the controlbar and the thumbstrip
hs.addSlideshow({
\tinterval: 5000,
\trepeat: false,
\tuseControls: true,
\tfixedControls: 'fit',
\toverlayOptions: {
\t\topacity: .75,
\t\tposition: 'top center',
\t\thideOnMouseOut: true
\t}
});
</script>
<script type=\"text/javascript\">
\$(document).ready(function() {
\tvar scr_w = \$(this).width();
\tvar scr_h = \$(this).height();
\tif (scr_w > 800 && scr_h > 600) {
\t\t\$(\"dl.thumbnail a\").addClass(\"highslide\").attr(\"onclick\", \"return hs.expand(this)\");
\t}
});
</script>
";
        }
    }

    public function getTemplateName()
    {
        return "@bb3mobi_highslide/event/overall_footer_after.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  27 => 4,  21 => 2,  19 => 1,);
    }
}
