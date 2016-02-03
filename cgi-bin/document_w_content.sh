#!/bin/bash
echo "Content-type: text/html"  
echo ""  

. document_parse_url.sh

if   [[ $FROM_opt == "content_add" ]];then
  file_id=`date +%s`
  touch $FROM_path/${file_id}.1.file
  touch $FROM_path/${file_id}.2.file
  touch $FROM_path/${file_id}.3.file
elif [[ $FROM_opt == "content_del" ]];then
echo a
elif [[ $FROM_opt == "content_move" ]];then
  echo a
fi
