#!/bin/bash

mp-run-process shellcopy --input=$PWD/test.sh --output=$PWD/shellcopy_of_test.sh
mp-run-process octcopy --input=$PWD/test.sh --output=$PWD/octcopy_of_test.sh
