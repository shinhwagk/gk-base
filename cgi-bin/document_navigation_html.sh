#!/bin/bash
for i in `ls -l ../data/ | grep '^d' | awk '{print $9}' | grep '^[0-9]\+$'`;do
  echo "<a href=?path=../data/$i>`cat ../data/$i/dir.name`</a>"
done
