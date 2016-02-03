#!/bin/bash
if [[ ! -z $FROM_path ]]
then
  for i in `ls -l $FROM_path | grep '^d' | awk '{print $9}' | grep '^[0-9]\+$'`;do
    echo "<a href=?path=$FROM_path/$i>`cat $FROM_path/$i/dir.name`</a><br>"
  done
fi
