<?php

/* acp_main.html */
class __TwigTemplate_e153d0867281be351f96b41fa2d5c3e0dff90b3d01fd20d39276c78f97351b45 extends Twig_Template
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
        $location = "overall_header.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("overall_header.html", "acp_main.html", 1)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 2
        echo "
<a id=\"maincontent\"></a>

";
        // line 5
        if ((isset($context["S_RESTORE_PERMISSIONS"]) ? $context["S_RESTORE_PERMISSIONS"] : null)) {
            // line 6
            echo "
\t<h1>";
            // line 7
            echo $this->env->getExtension('phpbb')->lang("PERMISSIONS_TRANSFERRED");
            echo "</h1>

\t<p>";
            // line 9
            echo $this->env->getExtension('phpbb')->lang("PERMISSIONS_TRANSFERRED_EXPLAIN");
            echo "</p>

";
        } else {
            // line 12
            echo "
\t<h1>";
            // line 13
            echo $this->env->getExtension('phpbb')->lang("WELCOME_PHPBB");
            echo "</h1>

\t<p>";
            // line 15
            echo $this->env->getExtension('phpbb')->lang("ADMIN_INTRO");
            echo "</p>

\t";
            // line 17
            if ((isset($context["S_VERSIONCHECK_FAIL"]) ? $context["S_VERSIONCHECK_FAIL"] : null)) {
                // line 18
                echo "\t\t<div class=\"errorbox notice\">
\t\t\t<p>";
                // line 19
                echo $this->env->getExtension('phpbb')->lang("VERSIONCHECK_FAIL");
                echo "</p>
\t\t\t<p>";
                // line 20
                echo (isset($context["VERSIONCHECK_FAIL_REASON"]) ? $context["VERSIONCHECK_FAIL_REASON"] : null);
                echo "</p>
\t\t\t<p><a href=\"";
                // line 21
                echo (isset($context["U_VERSIONCHECK_FORCE"]) ? $context["U_VERSIONCHECK_FORCE"] : null);
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("VERSIONCHECK_FORCE_UPDATE");
                echo "</a> &middot; <a href=\"";
                echo (isset($context["U_VERSIONCHECK"]) ? $context["U_VERSIONCHECK"] : null);
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("MORE_INFORMATION");
                echo "</a></p>
\t\t</div>
\t";
            } elseif ( !            // line 23
(isset($context["S_VERSION_UP_TO_DATE"]) ? $context["S_VERSION_UP_TO_DATE"] : null)) {
                // line 24
                echo "\t\t<div class=\"errorbox\">
\t\t\t<p>";
                // line 25
                echo $this->env->getExtension('phpbb')->lang("VERSION_NOT_UP_TO_DATE_TITLE");
                echo "</p>
\t\t\t<p><a href=\"";
                // line 26
                echo (isset($context["U_VERSIONCHECK_FORCE"]) ? $context["U_VERSIONCHECK_FORCE"] : null);
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("VERSIONCHECK_FORCE_UPDATE");
                echo "</a> &middot; <a href=\"";
                echo (isset($context["U_VERSIONCHECK"]) ? $context["U_VERSIONCHECK"] : null);
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("MORE_INFORMATION");
                echo "</a></p>
\t\t</div>
\t";
            }
            // line 29
            echo "
\t";
            // line 30
            if ((isset($context["S_SEARCH_INDEX_MISSING"]) ? $context["S_SEARCH_INDEX_MISSING"] : null)) {
                // line 31
                echo "\t\t<div class=\"errorbox\">
\t\t\t<h3>";
                // line 32
                echo $this->env->getExtension('phpbb')->lang("WARNING");
                echo "</h3>
\t\t\t<p>";
                // line 33
                echo $this->env->getExtension('phpbb')->lang("NO_SEARCH_INDEX");
                echo "</p>
\t\t</div>
\t";
            }
            // line 36
            echo "
\t";
            // line 37
            if ((isset($context["S_REMOVE_INSTALL"]) ? $context["S_REMOVE_INSTALL"] : null)) {
                // line 38
                echo "\t\t<div class=\"errorbox\">
\t\t\t<h3>";
                // line 39
                echo $this->env->getExtension('phpbb')->lang("WARNING");
                echo "</h3>
\t\t\t<p>";
                // line 40
                echo $this->env->getExtension('phpbb')->lang("REMOVE_INSTALL");
                echo "</p>
\t\t</div>
\t";
            }
            // line 43
            echo "
\t";
            // line 44
            if ((isset($context["S_MBSTRING_LOADED"]) ? $context["S_MBSTRING_LOADED"] : null)) {
                // line 45
                echo "\t\t";
                if ((isset($context["S_MBSTRING_FUNC_OVERLOAD_FAIL"]) ? $context["S_MBSTRING_FUNC_OVERLOAD_FAIL"] : null)) {
                    // line 46
                    echo "\t\t\t<div class=\"errorbox\">
\t\t\t\t<h3>";
                    // line 47
                    echo $this->env->getExtension('phpbb')->lang("ERROR_MBSTRING_FUNC_OVERLOAD");
                    echo "</h3>
\t\t\t\t<p>";
                    // line 48
                    echo $this->env->getExtension('phpbb')->lang("ERROR_MBSTRING_FUNC_OVERLOAD_EXPLAIN");
                    echo "</p>
\t\t\t</div>
\t\t";
                }
                // line 51
                echo "
\t\t";
                // line 52
                if ((isset($context["S_MBSTRING_ENCODING_TRANSLATION_FAIL"]) ? $context["S_MBSTRING_ENCODING_TRANSLATION_FAIL"] : null)) {
                    // line 53
                    echo "\t\t\t<div class=\"errorbox\">
\t\t\t\t<h3>";
                    // line 54
                    echo $this->env->getExtension('phpbb')->lang("ERROR_MBSTRING_ENCODING_TRANSLATION");
                    echo "</h3>
\t\t\t\t<p>";
                    // line 55
                    echo $this->env->getExtension('phpbb')->lang("ERROR_MBSTRING_ENCODING_TRANSLATION_EXPLAIN");
                    echo "</p>
\t\t\t</div>
\t\t";
                }
                // line 58
                echo "
\t\t";
                // line 59
                if ((isset($context["S_MBSTRING_HTTP_INPUT_FAIL"]) ? $context["S_MBSTRING_HTTP_INPUT_FAIL"] : null)) {
                    // line 60
                    echo "\t\t\t<div class=\"errorbox\">
\t\t\t\t<h3>";
                    // line 61
                    echo $this->env->getExtension('phpbb')->lang("ERROR_MBSTRING_HTTP_INPUT");
                    echo "</h3>
\t\t\t\t<p>";
                    // line 62
                    echo $this->env->getExtension('phpbb')->lang("ERROR_MBSTRING_HTTP_INPUT_EXPLAIN");
                    echo "</p>
\t\t\t</div>
\t\t";
                }
                // line 65
                echo "
\t\t";
                // line 66
                if ((isset($context["S_MBSTRING_HTTP_OUTPUT_FAIL"]) ? $context["S_MBSTRING_HTTP_OUTPUT_FAIL"] : null)) {
                    // line 67
                    echo "\t\t\t<div class=\"errorbox\">
\t\t\t\t<h3>";
                    // line 68
                    echo $this->env->getExtension('phpbb')->lang("ERROR_MBSTRING_HTTP_OUTPUT");
                    echo "</h3>
\t\t\t\t<p>";
                    // line 69
                    echo $this->env->getExtension('phpbb')->lang("ERROR_MBSTRING_HTTP_OUTPUT_EXPLAIN");
                    echo "</p>
\t\t\t</div>
\t\t";
                }
                // line 72
                echo "\t";
            }
            // line 73
            echo "
\t";
            // line 74
            if ((isset($context["S_WRITABLE_CONFIG"]) ? $context["S_WRITABLE_CONFIG"] : null)) {
                // line 75
                echo "\t\t<div class=\"errorbox notice\">
\t\t\t<p>";
                // line 76
                echo $this->env->getExtension('phpbb')->lang("WRITABLE_CONFIG");
                echo "</p>
\t\t</div>
\t";
            }
            // line 79
            echo "
\t";
            // line 80
            if ((isset($context["S_PHP_VERSION_OLD"]) ? $context["S_PHP_VERSION_OLD"] : null)) {
                // line 81
                echo "\t\t<div class=\"errorbox notice\">
\t\t\t<p>";
                // line 82
                echo $this->env->getExtension('phpbb')->lang("PHP_VERSION_OLD");
                echo "</p>
\t\t</div>
\t";
            }
            // line 85
            echo "
\t";
            // line 86
            // line 87
            echo "
\t<table class=\"table1 two-columns no-header\" data-no-responsive-header=\"true\">
\t\t<caption>";
            // line 89
            echo $this->env->getExtension('phpbb')->lang("FORUM_STATS");
            echo "</caption>
\t\t<col class=\"col1\" /><col class=\"col2\" /><col class=\"col1\" /><col class=\"col2\" />
\t<thead>
\t<tr>
\t\t<th>";
            // line 93
            echo $this->env->getExtension('phpbb')->lang("STATISTIC");
            echo "</th>
\t\t<th>";
            // line 94
            echo $this->env->getExtension('phpbb')->lang("VALUE");
            echo "</th>
\t\t<th>";
            // line 95
            echo $this->env->getExtension('phpbb')->lang("STATISTIC");
            echo "</th>
\t\t<th>";
            // line 96
            echo $this->env->getExtension('phpbb')->lang("VALUE");
            echo "</th>
\t</tr>
\t</thead>
\t<tbody>
\t<tr>
\t\t<td>";
            // line 101
            echo $this->env->getExtension('phpbb')->lang("NUMBER_POSTS");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " </td>
\t\t<td><strong>";
            // line 102
            echo (isset($context["TOTAL_POSTS"]) ? $context["TOTAL_POSTS"] : null);
            echo "</strong></td>
\t\t<td>";
            // line 103
            echo $this->env->getExtension('phpbb')->lang("POSTS_PER_DAY");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " </td>
\t\t<td><strong>";
            // line 104
            echo (isset($context["POSTS_PER_DAY"]) ? $context["POSTS_PER_DAY"] : null);
            echo "</strong></td>
\t</tr>
\t<tr>
\t\t<td>";
            // line 107
            echo $this->env->getExtension('phpbb')->lang("NUMBER_TOPICS");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " </td>
\t\t<td><strong>";
            // line 108
            echo (isset($context["TOTAL_TOPICS"]) ? $context["TOTAL_TOPICS"] : null);
            echo "</strong></td>
\t\t<td>";
            // line 109
            echo $this->env->getExtension('phpbb')->lang("TOPICS_PER_DAY");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " </td>
\t\t<td><strong>";
            // line 110
            echo (isset($context["TOPICS_PER_DAY"]) ? $context["TOPICS_PER_DAY"] : null);
            echo "</strong></td>
\t</tr>
\t<tr>
\t\t<td>";
            // line 113
            echo $this->env->getExtension('phpbb')->lang("NUMBER_USERS");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " </td>
\t\t<td><strong>";
            // line 114
            echo (isset($context["TOTAL_USERS"]) ? $context["TOTAL_USERS"] : null);
            echo "</strong></td>
\t\t<td>";
            // line 115
            echo $this->env->getExtension('phpbb')->lang("USERS_PER_DAY");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " </td>
\t\t<td><strong>";
            // line 116
            echo (isset($context["USERS_PER_DAY"]) ? $context["USERS_PER_DAY"] : null);
            echo "</strong></td>
\t</tr>
\t<tr>
\t\t<td>";
            // line 119
            echo $this->env->getExtension('phpbb')->lang("NUMBER_FILES");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " </td>
\t\t<td><strong>";
            // line 120
            echo (isset($context["TOTAL_FILES"]) ? $context["TOTAL_FILES"] : null);
            echo "</strong></td>
\t\t<td>";
            // line 121
            echo $this->env->getExtension('phpbb')->lang("FILES_PER_DAY");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " </td>
\t\t<td><strong>";
            // line 122
            echo (isset($context["FILES_PER_DAY"]) ? $context["FILES_PER_DAY"] : null);
            echo "</strong></td>
\t</tr>


\t<tr>
\t\t<td>";
            // line 127
            echo $this->env->getExtension('phpbb')->lang("BOARD_STARTED");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " </td>
\t\t<td><strong>";
            // line 128
            echo (isset($context["START_DATE"]) ? $context["START_DATE"] : null);
            echo "</strong></td>
\t\t<td>";
            // line 129
            echo $this->env->getExtension('phpbb')->lang("AVATAR_DIR_SIZE");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " </td>
\t\t<td><strong>";
            // line 130
            echo (isset($context["AVATAR_DIR_SIZE"]) ? $context["AVATAR_DIR_SIZE"] : null);
            echo "</strong></td>
\t</tr>
\t<tr>
\t\t<td>";
            // line 133
            echo $this->env->getExtension('phpbb')->lang("DATABASE_SIZE");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " </td>
\t\t<td><strong>";
            // line 134
            echo (isset($context["DBSIZE"]) ? $context["DBSIZE"] : null);
            echo "</strong></td>
\t\t<td>";
            // line 135
            echo $this->env->getExtension('phpbb')->lang("UPLOAD_DIR_SIZE");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " </td>
\t\t<td><strong>";
            // line 136
            echo (isset($context["UPLOAD_DIR_SIZE"]) ? $context["UPLOAD_DIR_SIZE"] : null);
            echo "</strong></td>
\t</tr>
\t<tr>
\t\t<td>";
            // line 139
            echo $this->env->getExtension('phpbb')->lang("DATABASE_SERVER_INFO");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " </td>
\t\t<td><strong>";
            // line 140
            echo (isset($context["DATABASE_INFO"]) ? $context["DATABASE_INFO"] : null);
            echo "</strong></td>
\t\t<td>";
            // line 141
            echo $this->env->getExtension('phpbb')->lang("GZIP_COMPRESSION");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " </td>
\t\t<td><strong>";
            // line 142
            echo (isset($context["GZIP_COMPRESSION"]) ? $context["GZIP_COMPRESSION"] : null);
            echo "</strong></td>
\t</tr>
\t";
            // line 144
            if (((isset($context["S_TOTAL_ORPHAN"]) ? $context["S_TOTAL_ORPHAN"] : null) || (isset($context["S_VERSIONCHECK"]) ? $context["S_VERSIONCHECK"] : null))) {
                // line 145
                echo "\t<tr>
\t";
                // line 146
                if ((isset($context["S_VERSIONCHECK"]) ? $context["S_VERSIONCHECK"] : null)) {
                    // line 147
                    echo "\t\t<td>";
                    echo $this->env->getExtension('phpbb')->lang("BOARD_VERSION");
                    echo $this->env->getExtension('phpbb')->lang("COLON");
                    echo " </td>
\t\t<td>
\t\t\t<strong><a href=\"";
                    // line 149
                    echo (isset($context["U_VERSIONCHECK"]) ? $context["U_VERSIONCHECK"] : null);
                    echo "\" ";
                    if ((isset($context["S_VERSION_UP_TO_DATE"]) ? $context["S_VERSION_UP_TO_DATE"] : null)) {
                        echo "style=\"color: #228822;\" ";
                    } elseif ( !(isset($context["S_VERSIONCHECK_FAIL"]) ? $context["S_VERSIONCHECK_FAIL"] : null)) {
                        echo "style=\"color: #BC2A4D;\" ";
                    }
                    echo "title=\"";
                    echo $this->env->getExtension('phpbb')->lang("MORE_INFORMATION");
                    echo "\">";
                    echo (isset($context["BOARD_VERSION"]) ? $context["BOARD_VERSION"] : null);
                    echo "</a></strong> [&nbsp;<a href=\"";
                    echo (isset($context["U_VERSIONCHECK_FORCE"]) ? $context["U_VERSIONCHECK_FORCE"] : null);
                    echo "\">";
                    echo $this->env->getExtension('phpbb')->lang("VERSIONCHECK_FORCE_UPDATE");
                    echo "</a>&nbsp;]
\t\t</td>
\t";
                }
                // line 152
                echo "\t";
                if ((isset($context["S_TOTAL_ORPHAN"]) ? $context["S_TOTAL_ORPHAN"] : null)) {
                    // line 153
                    echo "\t\t<td>";
                    echo $this->env->getExtension('phpbb')->lang("NUMBER_ORPHAN");
                    echo $this->env->getExtension('phpbb')->lang("COLON");
                    echo " </td>
\t\t<td><strong>";
                    // line 154
                    echo (isset($context["TOTAL_ORPHAN"]) ? $context["TOTAL_ORPHAN"] : null);
                    echo "</strong></td>
\t";
                }
                // line 156
                echo "\t";
                if (( !(isset($context["S_TOTAL_ORPHAN"]) ? $context["S_TOTAL_ORPHAN"] : null) ||  !(isset($context["S_VERSIONCHECK"]) ? $context["S_VERSIONCHECK"] : null))) {
                    // line 157
                    echo "\t\t<td>&nbsp;</td>
\t\t<td>&nbsp;</td>
\t";
                }
                // line 160
                echo "\t</tr>
\t";
            }
            // line 162
            echo "\t</tbody>
\t</table>

\t";
            // line 165
            if ((isset($context["S_ACTION_OPTIONS"]) ? $context["S_ACTION_OPTIONS"] : null)) {
                // line 166
                echo "\t\t<fieldset>
\t\t\t<legend>";
                // line 167
                echo $this->env->getExtension('phpbb')->lang("STATISTIC_RESYNC_OPTIONS");
                echo "</legend>

\t\t\t<form id=\"action_online_form\" method=\"post\" action=\"";
                // line 169
                echo (isset($context["U_ACTION"]) ? $context["U_ACTION"] : null);
                echo "\" data-ajax=\"true\">
\t\t\t\t<dl>
\t\t\t\t\t<dt><label for=\"action_online\">";
                // line 171
                echo $this->env->getExtension('phpbb')->lang("RESET_ONLINE");
                echo "</label><br /><span>&nbsp;</span></dt>
\t\t\t\t\t<dd><input type=\"hidden\" name=\"action\" value=\"online\" /><input class=\"button2\" type=\"submit\" id=\"action_online\" name=\"action_online\" value=\"";
                // line 172
                echo $this->env->getExtension('phpbb')->lang("RUN");
                echo "\" /></dd>
\t\t\t\t</dl>
\t\t\t</form>

\t\t\t<form id=\"action_date_form\" method=\"post\" action=\"";
                // line 176
                echo (isset($context["U_ACTION"]) ? $context["U_ACTION"] : null);
                echo "\" data-ajax=\"true\">
\t\t\t\t<dl>
\t\t\t\t\t<dt><label for=\"action_date\">";
                // line 178
                echo $this->env->getExtension('phpbb')->lang("RESET_DATE");
                echo "</label><br /><span>&nbsp;</span></dt>
\t\t\t\t\t<dd><input type=\"hidden\" name=\"action\" value=\"date\" /><input class=\"button2\" type=\"submit\" id=\"action_date\" name=\"action_date\" value=\"";
                // line 179
                echo $this->env->getExtension('phpbb')->lang("RUN");
                echo "\" /></dd>
\t\t\t\t</dl>
\t\t\t</form>

\t\t\t<form id=\"action_stats_form\" method=\"post\" action=\"";
                // line 183
                echo (isset($context["U_ACTION"]) ? $context["U_ACTION"] : null);
                echo "\">
\t\t\t\t<dl>
\t\t\t\t\t<dt><label for=\"action_stats\">";
                // line 185
                echo $this->env->getExtension('phpbb')->lang("RESYNC_STATS");
                echo "</label><br /><span>";
                echo $this->env->getExtension('phpbb')->lang("RESYNC_STATS_EXPLAIN");
                echo "</span></dt>
\t\t\t\t\t<dd><input type=\"hidden\" name=\"action\" value=\"stats\" /><input class=\"button2\" type=\"submit\" id=\"action_stats\" name=\"action_stats\" value=\"";
                // line 186
                echo $this->env->getExtension('phpbb')->lang("RUN");
                echo "\" /></dd>
\t\t\t\t</dl>
\t\t\t</form>

\t\t\t<form id=\"action_user_form\" method=\"post\" action=\"";
                // line 190
                echo (isset($context["U_ACTION"]) ? $context["U_ACTION"] : null);
                echo "\">
\t\t\t\t<dl>
\t\t\t\t\t<dt><label for=\"action_user\">";
                // line 192
                echo $this->env->getExtension('phpbb')->lang("RESYNC_POSTCOUNTS");
                echo "</label><br /><span>";
                echo $this->env->getExtension('phpbb')->lang("RESYNC_POSTCOUNTS_EXPLAIN");
                echo "</span></dt>
\t\t\t\t\t<dd><input type=\"hidden\" name=\"action\" value=\"user\" /><input class=\"button2\" type=\"submit\" id=\"action_user\" name=\"action_user\" value=\"";
                // line 193
                echo $this->env->getExtension('phpbb')->lang("RUN");
                echo "\" /></dd>
\t\t\t\t</dl>
\t\t\t</form>

\t\t\t<form id=\"action_db_track_form\" method=\"post\" action=\"";
                // line 197
                echo (isset($context["U_ACTION"]) ? $context["U_ACTION"] : null);
                echo "\">
\t\t\t\t<dl>
\t\t\t\t\t<dt><label for=\"action_db_track\">";
                // line 199
                echo $this->env->getExtension('phpbb')->lang("RESYNC_POST_MARKING");
                echo "</label><br /><span>";
                echo $this->env->getExtension('phpbb')->lang("RESYNC_POST_MARKING_EXPLAIN");
                echo "</span></dt>
\t\t\t\t\t<dd><input type=\"hidden\" name=\"action\" value=\"db_track\" /><input class=\"button2\" type=\"submit\" id=\"action_db_track\" name=\"action_db_track\" value=\"";
                // line 200
                echo $this->env->getExtension('phpbb')->lang("RUN");
                echo "\" /></dd>
\t\t\t\t</dl>
\t\t\t</form>

\t\t\t";
                // line 204
                if ((isset($context["S_FOUNDER"]) ? $context["S_FOUNDER"] : null)) {
                    // line 205
                    echo "\t\t\t<form id=\"action_purge_sessions_form\" method=\"post\" action=\"";
                    echo (isset($context["U_ACTION"]) ? $context["U_ACTION"] : null);
                    echo "\" data-ajax=\"true\">
\t\t\t\t<dl>
\t\t\t\t\t<dt><label for=\"action_purge_sessions\">";
                    // line 207
                    echo $this->env->getExtension('phpbb')->lang("PURGE_SESSIONS");
                    echo "</label><br /><span>";
                    echo $this->env->getExtension('phpbb')->lang("PURGE_SESSIONS_EXPLAIN");
                    echo "</span></dt>
\t\t\t\t\t<dd><input type=\"hidden\" name=\"action\" value=\"purge_sessions\" /><input class=\"button2\" type=\"submit\" id=\"action_purge_sessions\" name=\"action_purge_sessions\" value=\"";
                    // line 208
                    echo $this->env->getExtension('phpbb')->lang("RUN");
                    echo "\" /></dd>
\t\t\t\t</dl>
\t\t\t</form>
\t\t\t";
                }
                // line 212
                echo "
\t\t\t<form id=\"action_purge_cache_form\" method=\"post\" action=\"";
                // line 213
                echo (isset($context["U_ACTION"]) ? $context["U_ACTION"] : null);
                echo "\" data-ajax=\"true\">
\t\t\t\t<dl>
\t\t\t\t\t<dt><label for=\"action_purge_cache\">";
                // line 215
                echo $this->env->getExtension('phpbb')->lang("PURGE_CACHE");
                echo "</label><br /><span>";
                echo $this->env->getExtension('phpbb')->lang("PURGE_CACHE_EXPLAIN");
                echo "</span></dt>
\t\t\t\t\t<dd><input type=\"hidden\" name=\"action\" value=\"purge_cache\" /><input class=\"button2\" type=\"submit\" id=\"action_purge_cache\" name=\"action_purge_cache\" value=\"";
                // line 216
                echo $this->env->getExtension('phpbb')->lang("RUN");
                echo "\" /></dd>
\t\t\t\t</dl>
\t\t\t</form>

\t\t\t";
                // line 220
                // line 221
                echo "  \t\t</fieldset>
\t";
            }
            // line 223
            echo "
\t";
            // line 224
            if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "log", array()))) {
                // line 225
                echo "\t\t<h2>";
                echo $this->env->getExtension('phpbb')->lang("ADMIN_LOG");
                echo "</h2>

\t\t<p>";
                // line 227
                echo $this->env->getExtension('phpbb')->lang("ADMIN_LOG_INDEX_EXPLAIN");
                echo "</p>

\t\t<div style=\"text-align: right;\"><a href=\"";
                // line 229
                echo (isset($context["U_ADMIN_LOG"]) ? $context["U_ADMIN_LOG"] : null);
                echo "\">&raquo; ";
                echo $this->env->getExtension('phpbb')->lang("VIEW_ADMIN_LOG");
                echo "</a></div>

\t\t<table class=\"table1 zebra-table\">
\t\t<thead>
\t\t<tr>
\t\t\t<th>";
                // line 234
                echo $this->env->getExtension('phpbb')->lang("USERNAME");
                echo "</th>
\t\t\t<th>";
                // line 235
                echo $this->env->getExtension('phpbb')->lang("IP");
                echo "</th>
\t\t\t<th>";
                // line 236
                echo $this->env->getExtension('phpbb')->lang("TIME");
                echo "</th>
\t\t\t<th>";
                // line 237
                echo $this->env->getExtension('phpbb')->lang("ACTION");
                echo "</th>
\t\t</tr>
\t\t</thead>
\t\t<tbody>
\t\t";
                // line 241
                $context['_parent'] = (array) $context;
                $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "log", array()));
                foreach ($context['_seq'] as $context["_key"] => $context["log"]) {
                    // line 242
                    echo "\t\t\t<tr>
\t\t\t\t<td>";
                    // line 243
                    echo $this->getAttribute($context["log"], "USERNAME", array());
                    echo "</td>
\t\t\t\t<td style=\"text-align: center;\">";
                    // line 244
                    echo $this->getAttribute($context["log"], "IP", array());
                    echo "</td>
\t\t\t\t<td style=\"text-align: center;\">";
                    // line 245
                    echo $this->getAttribute($context["log"], "DATE", array());
                    echo "</td>
\t\t\t\t<td>";
                    // line 246
                    echo $this->getAttribute($context["log"], "ACTION", array());
                    echo "</td>
\t\t\t</tr>
\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['log'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 249
                echo "\t\t</tbody>
\t\t</table>
\t";
            }
            // line 252
            echo "
\t";
            // line 253
            if ((isset($context["S_INACTIVE_USERS"]) ? $context["S_INACTIVE_USERS"] : null)) {
                // line 254
                echo "\t\t<h2>";
                echo $this->env->getExtension('phpbb')->lang("INACTIVE_USERS");
                echo "</h2>

\t\t<p>";
                // line 256
                echo $this->env->getExtension('phpbb')->lang("INACTIVE_USERS_EXPLAIN_INDEX");
                echo "</p>

\t\t<div style=\"text-align: right;\"><a href=\"";
                // line 258
                echo (isset($context["U_INACTIVE_USERS"]) ? $context["U_INACTIVE_USERS"] : null);
                echo "\">&raquo; ";
                echo $this->env->getExtension('phpbb')->lang("VIEW_INACTIVE_USERS");
                echo "</a></div>

\t\t<table class=\"table1 zebra-table\">
\t\t<thead>
\t\t<tr>
\t\t\t<th>";
                // line 263
                echo $this->env->getExtension('phpbb')->lang("USERNAME");
                echo "</th>
\t\t\t<th>";
                // line 264
                echo $this->env->getExtension('phpbb')->lang("JOINED");
                echo "</th>
\t\t\t<th>";
                // line 265
                echo $this->env->getExtension('phpbb')->lang("INACTIVE_DATE");
                echo "</th>
\t\t\t<th>";
                // line 266
                echo $this->env->getExtension('phpbb')->lang("LAST_VISIT");
                echo "</th>
\t\t\t<th>";
                // line 267
                echo $this->env->getExtension('phpbb')->lang("INACTIVE_REASON");
                echo "</th>
\t\t</tr>
\t\t</thead>
\t\t<tbody>
\t\t";
                // line 271
                $context['_parent'] = (array) $context;
                $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "inactive", array()));
                $context['_iterated'] = false;
                foreach ($context['_seq'] as $context["_key"] => $context["inactive"]) {
                    // line 272
                    echo "\t\t\t<tr>
\t\t\t\t<td style=\"vertical-align: top;\">
\t\t\t\t\t";
                    // line 274
                    echo $this->getAttribute($context["inactive"], "USERNAME_FULL", array());
                    echo "
\t\t\t\t\t";
                    // line 275
                    if ($this->getAttribute($context["inactive"], "POSTS", array())) {
                        echo "<br />";
                        echo $this->env->getExtension('phpbb')->lang("POSTS");
                        echo $this->env->getExtension('phpbb')->lang("COLON");
                        echo " <strong>";
                        echo $this->getAttribute($context["inactive"], "POSTS", array());
                        echo "</strong> [<a href=\"";
                        echo $this->getAttribute($context["inactive"], "U_SEARCH_USER", array());
                        echo "\">";
                        echo $this->env->getExtension('phpbb')->lang("SEARCH_USER_POSTS");
                        echo "</a>]";
                    }
                    // line 276
                    echo "\t\t\t\t</td>
\t\t\t\t<td style=\"vertical-align: top;\">";
                    // line 277
                    echo $this->getAttribute($context["inactive"], "JOINED", array());
                    echo "</td>
\t\t\t\t<td style=\"vertical-align: top;\">";
                    // line 278
                    echo $this->getAttribute($context["inactive"], "INACTIVE_DATE", array());
                    echo "</td>
\t\t\t\t<td style=\"vertical-align: top;\">";
                    // line 279
                    echo $this->getAttribute($context["inactive"], "LAST_VISIT", array());
                    echo "</td>
\t\t\t\t<td style=\"vertical-align: top;\">
\t\t\t\t\t";
                    // line 281
                    echo $this->getAttribute($context["inactive"], "REASON", array());
                    echo "
\t\t\t\t\t";
                    // line 282
                    if ($this->getAttribute($context["inactive"], "REMINDED", array())) {
                        echo "<br />";
                        echo $this->getAttribute($context["inactive"], "REMINDED_EXPLAIN", array());
                    }
                    // line 283
                    echo "\t\t\t\t</td>
\t\t\t</tr>
\t\t";
                    $context['_iterated'] = true;
                }
                if (!$context['_iterated']) {
                    // line 286
                    echo "\t\t\t<tr>
\t\t\t\t<td colspan=\"5\" style=\"text-align: center;\">";
                    // line 287
                    echo $this->env->getExtension('phpbb')->lang("NO_INACTIVE_USERS");
                    echo "</td>
\t\t\t</tr>
\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['inactive'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 290
                echo "\t\t</tbody>
\t\t</table>
\t";
            }
            // line 293
            echo "
";
        }
        // line 295
        echo "
";
        // line 296
        $location = "overall_footer.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("overall_footer.html", "acp_main.html", 296)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
    }

    public function getTemplateName()
    {
        return "acp_main.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  845 => 296,  842 => 295,  838 => 293,  833 => 290,  824 => 287,  821 => 286,  814 => 283,  809 => 282,  805 => 281,  800 => 279,  796 => 278,  792 => 277,  789 => 276,  776 => 275,  772 => 274,  768 => 272,  763 => 271,  756 => 267,  752 => 266,  748 => 265,  744 => 264,  740 => 263,  730 => 258,  725 => 256,  719 => 254,  717 => 253,  714 => 252,  709 => 249,  700 => 246,  696 => 245,  692 => 244,  688 => 243,  685 => 242,  681 => 241,  674 => 237,  670 => 236,  666 => 235,  662 => 234,  652 => 229,  647 => 227,  641 => 225,  639 => 224,  636 => 223,  632 => 221,  631 => 220,  624 => 216,  618 => 215,  613 => 213,  610 => 212,  603 => 208,  597 => 207,  591 => 205,  589 => 204,  582 => 200,  576 => 199,  571 => 197,  564 => 193,  558 => 192,  553 => 190,  546 => 186,  540 => 185,  535 => 183,  528 => 179,  524 => 178,  519 => 176,  512 => 172,  508 => 171,  503 => 169,  498 => 167,  495 => 166,  493 => 165,  488 => 162,  484 => 160,  479 => 157,  476 => 156,  471 => 154,  465 => 153,  462 => 152,  442 => 149,  435 => 147,  433 => 146,  430 => 145,  428 => 144,  423 => 142,  418 => 141,  414 => 140,  409 => 139,  403 => 136,  398 => 135,  394 => 134,  389 => 133,  383 => 130,  378 => 129,  374 => 128,  369 => 127,  361 => 122,  356 => 121,  352 => 120,  347 => 119,  341 => 116,  336 => 115,  332 => 114,  327 => 113,  321 => 110,  316 => 109,  312 => 108,  307 => 107,  301 => 104,  296 => 103,  292 => 102,  287 => 101,  279 => 96,  275 => 95,  271 => 94,  267 => 93,  260 => 89,  256 => 87,  255 => 86,  252 => 85,  246 => 82,  243 => 81,  241 => 80,  238 => 79,  232 => 76,  229 => 75,  227 => 74,  224 => 73,  221 => 72,  215 => 69,  211 => 68,  208 => 67,  206 => 66,  203 => 65,  197 => 62,  193 => 61,  190 => 60,  188 => 59,  185 => 58,  179 => 55,  175 => 54,  172 => 53,  170 => 52,  167 => 51,  161 => 48,  157 => 47,  154 => 46,  151 => 45,  149 => 44,  146 => 43,  140 => 40,  136 => 39,  133 => 38,  131 => 37,  128 => 36,  122 => 33,  118 => 32,  115 => 31,  113 => 30,  110 => 29,  98 => 26,  94 => 25,  91 => 24,  89 => 23,  78 => 21,  74 => 20,  70 => 19,  67 => 18,  65 => 17,  60 => 15,  55 => 13,  52 => 12,  46 => 9,  41 => 7,  38 => 6,  36 => 5,  31 => 2,  19 => 1,);
    }
}
