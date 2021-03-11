#!/bin/sh -l
export_env_var=$(echo "$1" | awk '{print "export " $0}')

export_env_var="${export_env_var//'%'/'%25'}"
export_env_var="${export_env_var//$'\n'/'%0A'}"
export_env_var="${export_env_var//$'\r'/'%0D'}"

echo "::set-output name=time::$export_env_var"
