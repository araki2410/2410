#!/usr/bin/python3.4
# -*- coding:utf-8 -*-

import cv2
import numpy, sys


if __name__ == '__main__':
    ESC_KEY = int(27)
    INTERVAL = int(33)
    FRAME_RATE = 15 #fps

    ORG_WINDOW_NAME = 'org'
    GAUSSIAN_WINDOW_NAME = 'gaussian'

    DEVICE_ID = int(0)

    cascade_file = 'haarcascade_frontalface_alt2.xml'
    cascade = cv2.CascadeClassifier(cascade_file)


    # capture movie
    cap = cv2.VideoCapture(DEVICE_ID)
    
    # read  flames
    end_flag, c_frame = cap.read()
#    height, width, channels = c_frame.shape

    # preper window
    cv2.namedWindow(ORG_WINDOW_NAME)
#    cv2.namedWindow(GAUSSIAN_WINDOW_NAME)
    
    # roop
    while end_flag == True:

        # capture image and detection face
        img = c_frame #ORG_WINDOW
        img_gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY) #GAUSSIAN_WINDOW
#        face_list = cascade.detectMultiScale(img_gray, minSize=(100,100))
        face_list = cascade.detectMultiScale(img, minSize=(100,100))

        # mark detected face
        for (x,y,w,h) in face_list:
            color = (255,0,0)
            pen_w = 3
#            cv2.rectangle(img_gray, (x,y), (x+w, y+h), color, thickness = pen_w)
            cv2.rectangle(img, (x,y), (x+w, y+h), color, thickness = pen_w)


        # show flame
        cv2.imshow(ORG_WINDOW_NAME, c_frame)
#        cv2.imshow(GAUSSIAN_WINDOW_NAME, img_gray)

        # exit by ESC key
        key = cv2.waitKey(INTERVAL)
        if key == 27: #ESC_KEY:
            break


        # read next frame
        end_flag, c_frame = cap.read()

    # fin proccess
    cap.release()
    cv2.destroyAllWindows()
