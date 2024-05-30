#!/bin/bash
mkdir code/dataset
python code/colmap_runner.py --path code/dataset/LR LR_colmap
python code/visualizer.py --dir code/dataset/LR
cd code
python test.py -opt options/test/test_spsr.json
cd ..
python process_imgs.py
python code/colmap_runner.py --path processed_results SR_pred_colmap
python code/visualizer.py --dir processed_results
