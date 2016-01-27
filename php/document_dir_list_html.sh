#!/bin/bash
#/bin/find $1 -maxdepth 1 -type d | sed -e '1d' | awk -F'/' '{print $NF}' | while read line; do echo "<a href=?path=$1/$line>"$line'</a><br>'; done
path=$1
cat $path"/dir.idx" | while read line; do echo "<a href=?path=$path/$line>`cat $path/$line/dir.name`</a><br>"; done
