#!/usr/bin/env bash

# Author: Ana Sofia Santos Cardoso (assc@hst.aau.dk)

# Remove files in subdirectories of /out
for entry in "out/dat"/* "out/pdf"/*
do
  if [ -f "$entry" ];then
    rm "$entry"
  fi
done

