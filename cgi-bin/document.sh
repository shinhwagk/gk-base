#!/bin/bash
echo "Content-type: text/html"  
echo "" 
  . document_parse_url.sh
  . document_check_switch.sh
echo '<html>'
echo '<head>'
echo '  <script type="text/javascript" src="http://code.jquery.com/jquery-2.2.0.min.js" charset="utf-8"></script>'
if [[ $switch_val == "w" ]];then
  echo '  <script type="text/javascript" src="../js/gk-base.js" charset="utf-8"></script>'
fi
echo '  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />'
echo '</head>'
echo '<body>'
  . document_navigation_html.sh
echo '<hr>'
  . document_breadcrumb_html.sh
echo '<table style="width:100%">'
if [[ $switch_val == "w" ]];then
  . document_w.sh
fi
echo '  <tr>'
echo '    <td style="width:20%">'
  . document_dir_html.sh
echo '    </td>'
echo '    <td style="border-left: 1px solid;padding:15px;width:80%">'
  . document_content_html.sh
echo '    </td>'
echo '  </tr>'
echo '</table>'
echo '</body>'
echo '</html>'
