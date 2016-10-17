#!/usr/bin/env sh
set -e

caffe/build/tools/caffe train \
    -gpu 0,1 \
    -solver solver.prototxt \
    2>&1 | tee /home/alisc/Log/AlexNet_minrelu.log \
    $@
