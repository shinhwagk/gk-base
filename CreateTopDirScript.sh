#!/bin/bash
id=`date +%s`
mkdir $id
echo $id >> dir.idx
touch $id/dir.name
touch $id/dir.idx
touch $id/file.idx
echo 'null' >> $id/dir.name
chown php:gkbase ./* -R
