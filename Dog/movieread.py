#!/usr/bin/python3
# -*- coding:utf-8 -*-

from PIL import Image
import numpy as np
import matplotlib.pyplot as plt
import cv2
from matplotlib.image import imread
import sys

#img = imread('Data/dogcentric/Hime/Car/Car_Hime_2_7340_7430.gif')
img = "Data/dogcentric/Hime/Car/Car_Hime_2_7340_7430.gif"
#plt.imshow(img)
#plt.show

#img = np.array( Image.open(img))
#print(img)
#print(img.shape)


def read_gif(giffile):
    gif = cv2.VideoCapture(giffile)
    _, img = gif.read()
    print(img.shape)
    
read_gif(img)
