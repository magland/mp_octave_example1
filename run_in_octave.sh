#!/bin/bash

rand_id=$(cat /dev/urandom | tr -dc 'a-z' | fold -w 16 | head -n 1)
tmp='/tmp'
script_path="$tmp/run_in_octave_$rand_id.m"
echo $1 > $script_path
./run_octave_script.sh /host/$script_path; #rm $script_path

