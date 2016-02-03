#!/bin/bash
#echo ${FROM_path:8} | awk -F'/' '{ for (i=1;i<=NF;i++) print $i }'; do eval "FROM_$i"; done
for i in $(echo ${FROM_path:8} | awk -F'/' '{ for (i=1;i<=NF;i++) print $i }'); do
  if [[ -z $father_dir ]];then
     father_dir=$i
  else
     father_dir=$father_dir/$i
  fi
  name=`cat ../data/$father_dir/dir.name`
  echo -n "/<a href='?path=../data/$father_dir'>$name</a>"
done
