<?php

/* navigation/logo.twig */
class __TwigTemplate_14c69d8ffd0b86b7e190ad97537058f4a77cc54af0b9428c7ff76a90a009f050 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = [
        ];
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        // line 1
        if (($context["display_logo"] ?? null)) {
            // line 2
            echo "    <div id=\"pmalogo\">";
            // line 3
            if (($context["use_logo_link"] ?? null)) {
                // line 4
                echo "            <a href=\"";
                echo (((isset($context["logo_link"]) || array_key_exists("logo_link", $context))) ? (_twig_default_filter(($context["logo_link"] ?? null), "#")) : ("#"));
                echo "\"";
                // line 5
                echo twig_escape_filter($this->env, (((isset($context["link_attribs"]) || array_key_exists("link_attribs", $context))) ? ((" " . ($context["link_attribs"] ?? null))) : ("")), "html", null, true);
                echo ">";
            }
            // line 7
            echo ($context["logo"] ?? null);
            // line 8
            if (($context["use_logo_link"] ?? null)) {
                // line 9
                echo "            </a>";
            }
            // line 11
            echo "    </div>";
        }
    }

    public function getTemplateName()
    {
        return "navigation/logo.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  40 => 11,  37 => 9,  35 => 8,  33 => 7,  29 => 5,  25 => 4,  23 => 3,  21 => 2,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "navigation/logo.twig", "D:\\phpstudy_pro\\WWW\\www.123.com\\public\\phpMyAdmin4.8.5\\templates\\navigation\\logo.twig");
    }
}
