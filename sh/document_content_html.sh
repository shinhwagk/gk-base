#!/bin/bash
file_idx_path='../data/'${par}/file.idx
file_idx_size=`ls -l $file_idx_path |cut -d ' ' -f 5`
if [[ $file_idx_size != 0 ]]
then
  echo "<table border='1' style='width:100%'>"
  for i in `cat $file_idx_path`
  do
    file_1_path=${path}/$i.1.file
    file_2_path=${path}/$i.2.file
    file_3_path=${path}/$i.3.file
    echo "<tr><td><pre>`cat $file_1_path`</pre></td><td><pre>`cat $file_2_data`</pre></td>"
    echo "<td><a href='document_markdown_view.php?markdown=$file_3_path' target='_blank' >view</a></td></tr>";
  done
  echo "<table>"
fi
