#!/bin/sh -

filename=$1 &&
    platex $filename

dvipdfmx ${filename%.*}

hoge=${filename%.*} &&
    rm $hoge.aux $hoge.dvi $hoge.log
