#!/bin/bash
file_idx_size=`ls -l $FROM_path | grep 'file$' | wc -l`
if [[ $file_idx_size != 0 ]];then
  echo "<table border='1' style='width:100%'>"
  for i in `ls -l $FROM_path | grep 'file$' | awk '{print $9}' | awk -F'.' '{print $1}' | sort -u`
  do
    file_1_path=${FROM_path}/${i}.1.file
    file_2_path=${FROM_path}/${i}.2.file
    file_3_path=${FROM_path}/${i}.3.file
    echo "<tr>
            <td style='width:5%'><pre>`cat $file_1_path`</pre></td>
            <td style='width:40%'><pre>`cat $file_2_path`</pre></td>
            <td style='width:40%'>"
    if [[ `ls -l ${file_3_path} | awk '{print $5}'` != 0 ]];then
      echo "  <a href='document_markdown_view.sh?markdown=${file_3_path}' target='_blank'>view</a>";
    fi
    echo "  </td>"

    if [[ $switch_val == "w" ]];then
      echo "<td>
              <a href='document_w_content_update_html.sh?path=${FROM_path}/${i}'>u</a>
              <button>m</button>
              <button>d</button>
            </td>"
    fi
    echo "</tr>"
  done
  echo "</table>"
fi
