<?php

/* display/export/options_output.twig */
class __TwigTemplate_e7ff98beeb6f543dd351d19ea51f5cb8ae2faf4bd13123a40493fda63f964511 extends Twig_Template
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
        echo "<div class=\"exportoptions\" id=\"output\">
    <h3>";
        // line 2
        echo _gettext("Output:");
        echo "</h3>
    <ul id=\"ul_output\">
        <li>
            <input type=\"checkbox\" id=\"btn_alias_config\"";
        // line 5
        echo ((($context["has_aliases"] ?? null)) ? (" checked") : (""));
        echo ">
            <label for=\"btn_alias_config\">";
        // line 7
        echo _gettext("Rename exported databases/tables/columns");
        // line 8
        echo "            </label>
        </li>";
        // line 11
        if ((($context["export_type"] ?? null) != "server")) {
            // line 12
            echo "            <li>
                <input type=\"checkbox\" name=\"lock_tables\"
                    value=\"something\" id=\"checkbox_lock_tables\"";
            // line 15
            echo (((( !($context["repopulate"] ?? null) && ($context["is_checked_lock_tables"] ?? null)) || ($context["lock_tables"] ?? null))) ? (" checked") : (""));
            echo ">
                <label for=\"checkbox_lock_tables\">";
            // line 17
            echo sprintf(_gettext("Use %s statement"), "<code>LOCK TABLES</code>");
            echo "
                </label>
            </li>";
        }
        // line 21
        echo "
        <li>
            <input type=\"radio\" name=\"output_format\" value=\"sendit\" id=\"radio_dump_asfile\"";
        // line 24
        echo ((( !($context["repopulate"] ?? null) && ($context["is_checked_asfile"] ?? null))) ? (" checked") : (""));
        echo ">
            <label for=\"radio_dump_asfile\">";
        // line 26
        echo _gettext("Save output to a file");
        // line 27
        echo "            </label>
            <ul id=\"ul_save_asfile\">";
        // line 29
        if ( !twig_test_empty(($context["save_dir"] ?? null))) {
            // line 30
            echo ($context["options_output_save_dir"] ?? null);
        }
        // line 33
        echo ($context["options_output_format"] ?? null);
        // line 35
        if (($context["is_encoding_supported"] ?? null)) {
            // line 36
            echo ($context["options_output_charset"] ?? null);
        }
        // line 39
        echo ($context["options_output_compression"] ?? null);
        // line 41
        if (((($context["export_type"] ?? null) == "server") || (($context["export_type"] ?? null) == "database"))) {
            // line 42
            echo ($context["options_output_separate_files"] ?? null);
        }
        // line 44
        echo "            </ul>
        </li>";
        // line 47
        echo ($context["options_output_radio"] ?? null);
        echo "
    </ul>

    <label for=\"maxsize\">";
        // line 51
        echo sprintf(_gettext("Skip tables larger than %s MiB"), "</label><input type=\"text\" id=\"maxsize\" name=\"maxsize\" size=\"4\">");
        // line 53
        echo "
</div>
";
    }

    public function getTemplateName()
    {
        return "display/export/options_output.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  96 => 53,  94 => 51,  88 => 47,  85 => 44,  82 => 42,  80 => 41,  78 => 39,  75 => 36,  73 => 35,  71 => 33,  68 => 30,  66 => 29,  63 => 27,  61 => 26,  57 => 24,  53 => 21,  47 => 17,  43 => 15,  39 => 12,  37 => 11,  34 => 8,  32 => 7,  28 => 5,  22 => 2,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "display/export/options_output.twig", "D:\\phpstudy_pro\\WWW\\www.123.com\\public\\phpMyAdmin4.8.5\\templates\\display\\export\\options_output.twig");
    }
}
