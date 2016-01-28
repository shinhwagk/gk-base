#!/bin/bash
unset str
unset arr
str=`echo $1 |awk -F"../data/" '{print $2}'`
arr=${str//// }
fater_dir=""
for i in ${arr[@]} 
do 
  fater_dir=$fater_dir/$i
  name=`cat ../data/$fater_dir/dir.name`
  echo -n "/<a href='?path=../data$fater_dir'>$name</a>"
done
