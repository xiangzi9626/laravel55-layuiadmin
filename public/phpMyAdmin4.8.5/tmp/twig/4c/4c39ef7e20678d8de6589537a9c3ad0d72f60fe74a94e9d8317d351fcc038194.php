<?php

/* display/export/options_output_compression.twig */
class __TwigTemplate_77e729cf3e1dc5059c8e7829090083164af88d0365bbf78534a952f5af75e4d6 extends Twig_Template
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
        if ((($context["is_zip"] ?? null) || ($context["is_gzip"] ?? null))) {
            // line 2
            echo "    <li>
        <label for=\"compression\" class=\"desc\">";
            // line 4
            echo _gettext("Compression:");
            // line 5
            echo "        </label>
        <select id=\"compression\" name=\"compression\">
            <option value=\"none\">";
            // line 7
            echo _gettext("None");
            echo "</option>";
            // line 8
            if (($context["is_zip"] ?? null)) {
                // line 9
                echo "                <option value=\"zip\"";
                // line 10
                echo (((($context["selected_compression"] ?? null) == "zip")) ? (" selected") : (""));
                echo ">";
                // line 11
                echo _gettext("zipped");
                // line 12
                echo "                </option>";
            }
            // line 14
            if (($context["is_gzip"] ?? null)) {
                // line 15
                echo "                <option value=\"gzip\"";
                // line 16
                echo (((($context["selected_compression"] ?? null) == "gzip")) ? (" selected") : (""));
                echo ">";
                // line 17
                echo _gettext("gzipped");
                // line 18
                echo "                </option>";
            }
            // line 20
            echo "        </select>
    </li>";
        } else {
            // line 23
            echo "    <input type=\"hidden\" name=\"compression\" value=\"";
            echo twig_escape_filter($this->env, ($context["selected_compression"] ?? null), "html", null, true);
            echo "\">";
        }
    }

    public function getTemplateName()
    {
        return "display/export/options_output_compression.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  61 => 23,  57 => 20,  54 => 18,  52 => 17,  49 => 16,  47 => 15,  45 => 14,  42 => 12,  40 => 11,  37 => 10,  35 => 9,  33 => 8,  30 => 7,  26 => 5,  24 => 4,  21 => 2,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "display/export/options_output_compression.twig", "D:\\phpstudy_pro\\WWW\\www.123.com\\public\\phpMyAdmin4.8.5\\templates\\display\\export\\options_output_compression.twig");
    }
}
