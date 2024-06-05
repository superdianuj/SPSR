#!/bin/bash

path="$1"
rm -rf data/dataset/*
cp -r "$path" data/dataset
mv data/dataset/"$path" data/dataset/LR
cp -r "$path" data/dataset
mv data/dataset/"$path" data/dataset/HR
cd code
python test.py -opt options/test/test_spsr.json
cd ..
python process_imgs.py
