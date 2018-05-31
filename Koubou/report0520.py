#!/usr/bin/python
# -*- coding:utf-8 -*-

import numpy as np

def AND(x1, x2):
    x = np.array([x1, x2])
    w = np.array([0.5, 0.5])
    b = -0.7
    y = np.sum(w*x) + b
    if y > 0:
        return 1
    else:
        return 0
    
def NAND(x1, x2):
    x = np.array([x1, x2])
    w = np.array([-0.6,-0.6])
    b = 1
    y = np.sum(w*x) + b
    if y > 0:
        return 1
    else:
        return 0
    
def OR(x1, x2):
    x = np.array([x1, x2])
    w = np.array([1,1])
    b = 0
    y = np.sum(w*x) + b
    if y > 0:
        return 1
    else:
        return 0
    
def NOR(x1, x2):
    x = np.array([x1, x2])
    w = np.array([-1,-1])
    b = 1
    y = np.sum(w*x) + b
    if y > 0:
        return 1
    else:
        return 0
    
def XOR(x1, x2): 
    xor1 = NAND(x1, x2)
    xor2 = OR(x1, x2)
    y = AND(xor1, xor2)
    if y > 0:
        return 1
    else:
        return 0

def XAND(x1, x2):
    xand1 = NAND(x1, x2)
    xand2 = OR(x1, x2)
    y = NAND(xand1, xand2)
    if y > 0:
        return 1
    else:
        return 0
    

    
if __name__ == '__main__':
    print("          ANOXX")
    for xs in [(0, 0), (1, 0), (0, 1), (1, 1)]:
        and_out = AND(xs[0], xs[1])
        nand_out = NAND(xs[0], xs[1])
        or_out = OR(xs[0], xs[1])
        xor_out = XOR(xs[0], xs[1])
        xand_out = XAND(xs[0], xs[1])
        print(str(xs) + " -> " + str(and_out) + str(nand_out)
              + str(or_out) + str(xor_out) + str(xand_out))
