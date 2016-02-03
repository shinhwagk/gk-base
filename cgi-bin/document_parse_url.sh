#!/bin/bash
for i in $(echo $QUERY_STRING |awk -F'&' '{ for (i=1;i<=NF;i++) print $i }'); do eval "FROM_$i"; done
