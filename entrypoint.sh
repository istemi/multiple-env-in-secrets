#!/bin/sh -l
export_env_var=$(echo "$1" | awk '{print "export " $0}')
echo "::set-output name=time::$export_env_var"
