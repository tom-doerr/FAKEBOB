#!/usr/bin/env python3

import matplotlib.pyplot as plt


OFFSET_SCORES_FILE = '1610314828.3163745'
OFFSET_SCORES_DIR = 'offset_scores/'

with open(OFFSET_SCORES_DIR + OFFSET_SCORES_FILE, 'r') as f:
    offset_list = f.read()[1:-1].split(', ')
    offset_list = [float(e) for e in offset_list]

plt.plot(offset_list)
plt.show()


