#!/bin/bash
file_idx_size=`ls -l $FROM_path | grep 'file$' | wc -l`
if [[ $file_idx_size != 0 ]]
then
  echo "<table border='1' style='width:100%'>"
  for i in `ls -l $FROM_path | grep 'file$' | awk '{print $9}'`
  do
    if [[ `echo $i | grep '\.1\.' | wc -l` == 1 ]];then
      echo "<tr><td><pre>`cat $FROM_path/$i`</pre></td>"
    elif [[ `echo $i | grep '\.2\.' | wc -l` == 1 ]];then
      echo "<td><pre>`cat $FROM_path/$i`</pre></td>"
    elif [[ `echo $i | grep '\.3\.' | wc -l` == 1 ]];then
      echo "<td>"
      if [[ `ls -l $FROM_path/$i | awk '{print $5}'` != 0 ]];then
        echo "<a href='document_markdown_view.sh?markdown=$FROM_path/$i' target='_blank' >view</a>";
      fi
      echo "</td></tr>" 
    fi
  done
  echo "<table>"
fi
