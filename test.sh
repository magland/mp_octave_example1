#!/bin/bash

mp-run-process shellcopy --input=$PWD/README.md --output=$PWD/copy_using_shellcopy.md
mp-run-process octcopy --input=$PWD/README.md --output=$PWD/copy_using_octcopy.md
