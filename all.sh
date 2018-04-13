#!/bin/bash
# -*- coding:utf-8 -*-

for file in `\find . -name '*.jpeg'` ; do
    mv $file ${file/jpeg/jpg}
done
