#!/usr/bin/python
# -*- coding:utf-8 -*-

import numpy as np
import random
import for052702 as repo

network = repo.init_network()
batch_size = 16
x=np.random.rand(1000,2)
for i in range(0,len(x),batch_size):
    x_batch = x[i:i+batch_size]
    y_batch = repo.forward(network,x_batch)
