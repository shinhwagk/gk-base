#!/bin/bash
if [[ ! -z $par ]]
then
  path='../data/'$par
  cat $path"/dir.idx" | while read line; do echo "<a href=?path=$path/$line>`cat $path/$line/dir.name`</a><br>"; done
fi
