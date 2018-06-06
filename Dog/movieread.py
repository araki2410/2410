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


def read_cap(giffile):
    t=[]
    v = np.array
    i=0
    cap = cv2.VideoCapture(giffile)
    _, flame = cap.read()
    video = flame[np.newaxis]
#    print(flame.shape)
    
    while(cap.isOpened()):
        ret, flame = cap.read()
        if ret==False:
            break
        else:
            v = flame[np.newaxis]
            video = np.concatenate((video, v), axis=0)
            
            t.append(flame)
    cap.release()
    print(video.shape)
    return t

read_cap(img)
#t = np.array(read_cap(img))
#print(t.shape)

