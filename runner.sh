#!/bin/bash

python code/colmap_runner.py --path processed_results SR_pred_colmap
python code/visualizer.py --dir processed_results
cd code
python test.py -opt options/test/test_spsr.json
cd ..
python process_imgs.py
python code/colmap_runner.py --path processed_results SR_pred_colmap
python code/visualizer.py --dir processed_results
