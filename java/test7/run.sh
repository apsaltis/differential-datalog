#!/bin/bash
# Shell script to build and run the a combination of two DDlog programs
# in the same process

set -ex

source ../build_java.sh
LIBDDLOG="libmylib.so" # use a custom library name
compile a.dl A.java debug
java -Djava.library.path=. A
cleanup
# Additional cleanup
# rm -rf two_ddlog
