#!/usr/bin/env bash

python=$1
prefix=$2
shift 2

[[ -z $python ]] && python=python
[[ -z $prefix ]] && prefix=/usr

$python -m pip install . $@