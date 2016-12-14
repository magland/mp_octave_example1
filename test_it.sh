#!/bin/bash

basepath="/home/magland/dev/mp/mp_octave_example1"
input="$basepath/run2.sh"
output="$basepath/run5.sh"
./run_in_octave.sh 'addpath('\'''$basepath'/octave'\''); octcopy('\'''$input''\'','\'''$output''\'');'
