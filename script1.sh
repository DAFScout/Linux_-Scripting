#!/bin/bash


py3=$(python3 --version)

if [ "$py3" == "Python 3.6.9" ]; then
    echo "Versions are equal."
else
    echo "Versions are not equal."
fi
