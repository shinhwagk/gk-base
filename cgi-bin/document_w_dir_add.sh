#!/bin/bash
echo "Content-type: text/html"  
echo ""  

. document_parse_url.sh

if [[ $opt == "dir_add" ]];then
  dir_id=`date +%s`
  dir_path=$path/$dir_id
  mkdir $dir_path
  touch $dir_path/dir.idx
  echo $name > $dir_path/dir.name
  echo $dir_id >> $path/dir.idx
echo $dir_path
elif [[ $opt == "dir_del" ]];then
  rm -fr ../data/$name
elif [[ $opt == "dir_rename" ]];then
  mv  
elif [[ $opt == "dir_move" ]];then
  mv
fi
