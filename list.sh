#!/bin/bash
for dir in $(ls -R | grep ":$" | sed -e 's/:$//')
do
  ls -p $dir | grep -v / > $dir/list
done
