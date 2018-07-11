#!/usr/bin/python3.4
# -*- coding:utf-8 -*-
#import sys
import pickle
import scipy
from scipy import misc

def checking(input_img):
    pkl_path = "img_facenet.pkl"
    img_list = []
    distance = {}
    likelist = []
    # input_img = sys.argv[1].encode('utf-8')
    # input_img = input_img.encode('utf-8')
    with open(pkl_path, 'rb') as f:
        data = pickle.load(f) #, encoding="bytes")

    for i,j in data.items():
        print(i)
        img_list.append(i)
	
    for i in img_list:
        distance[i] = scipy.spatial.distance.euclidean(data[input_img], data[i])
        #print(distance)
	
    for j,k in sorted(distance.items(), key=lambda x:x[1]):
        print(k,"\t",j)
        if k > 0 and k < 1:
            likelist.append(j)
	
	#print(scipy.spatial.distance.euclidean(A, B))
