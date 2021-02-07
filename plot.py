#!/usr/bin/env python3

import matplotlib.pyplot as plt
import sys


#OFFSET_SCORES_DIR = 'gmm_offset_scores/'
#OFFSET_SCORES_DIR = 'offset_scores/'
OFFSET_SCORES_DIR = './'
#offset_scores_file = '1610314828.3163745'
#offset_scores_file = '1610316439.2431586'

offset_scores_file = sys.argv[1]

with open(OFFSET_SCORES_DIR + offset_scores_file, 'r') as f:
    offset_list = f.read()[1:-1].split(', ')
    offset_list = [float(e) for e in offset_list]

plt.plot(offset_list)
plt.show()


