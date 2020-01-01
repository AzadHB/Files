#!/bin/bash
fileTypeList="-name "*.c" -o -name "*.h" -o -name "*.cpp" -o -name "*.cc""
find $PWD $fileTypeList
