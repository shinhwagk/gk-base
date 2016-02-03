#!/bin/bash
echo "Content-type: text/html"  
echo ""  

. document_parse_url.sh

if [[ $FROM_opt == "dir_add" ]];then
  dir_id=`date +%s`
  dir_path=$FROM_path/$dir_id
  mkdir $dir_path
  echo $FROM_name > $dir_path/dir.name
elif [[ $FROM_opt == "dir_del" ]];then
  rm -fr ../data/$FROM_path
  echo $FROM_path | awk -F'/' '{NF-=1;print}' | sed 's/ /\//g'
elif [[ $FROM_opt == "dir_rename" ]];then
  mv  
elif [[ $FROM_opt == "dir_move" ]];then
  mv
fi
