<?php

/* display/export/option_header.twig */
class __TwigTemplate_b12099a961d080161bc0f2b1cd5bfaf874f1260e027d0ec5e8175c6b4132fd0e extends Twig_Template
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
        echo "<div class=\"exportoptions\" id=\"header\">
    <h2>";
        // line 3
        echo PhpMyAdmin\Util::getImage("b_export", _gettext("Export"));
        // line 4
        if ((($context["export_type"] ?? null) == "server")) {
            // line 5
            echo _gettext("Exporting databases from the current server");
        } elseif ((        // line 6
($context["export_type"] ?? null) == "database")) {
            // line 7
            echo twig_escape_filter($this->env, sprintf(_gettext("Exporting tables from \"%s\" database"), ($context["db"] ?? null)), "html", null, true);
        } else {
            // line 9
            echo twig_escape_filter($this->env, sprintf(_gettext("Exporting rows from \"%s\" table"), ($context["table"] ?? null)), "html", null, true);
        }
        // line 11
        echo "    </h2>
</div>
";
    }

    public function getTemplateName()
    {
        return "display/export/option_header.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  36 => 11,  33 => 9,  30 => 7,  28 => 6,  26 => 5,  24 => 4,  22 => 3,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "display/export/option_header.twig", "D:\\phpstudy_pro\\WWW\\www.123.com\\public\\phpMyAdmin4.8.5\\templates\\display\\export\\option_header.twig");
    }
}
