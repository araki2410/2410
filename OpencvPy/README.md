0Name
====

# git clone

$ git clone https://github.com/araki2410/<dir name>

(export GIT_SSL_NO_VERIFY=1)

# Install

$sudo apt-get install cmake 

$sudo apt-get install libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev \
[https://stackoverflow.com/questions/41328451/ssl-module-in-python-is-not-available-when-installing-package-with-pip3]


$ cd \
($ cd [prefer DIR])

$ wget -O opencv.zip https://github.com/Itseez/opencv/archive/3.3.0.zip \
($ wget --no-check-certificate -O opencv.zip...) \
$ unzip opencv.zip \
$ wget -O opencv_contrib.zip https://github.com/Itseez/opencv_contrib/archive/3.3.0.zip \
$ unzip opencv_contrib.zip \

$ cd opencv-3.3.0 \
$ mkdir build \
$ cd build \
$ cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D INSTALL_PYTHON_EXAMPLES=ON -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib-3.3.0/modules -D BUILD_EXAMPLES=ON ..

$ make -j4 \
(It takes 2 to 5 hours. Watch https://www.youtube.com/movies)
$ sudo make install

# Check to import cv2 on python3
$ python3.4                          
>Python 3.4.2 (default, Oct 19 2014, 13:31:11) 
>?[GCC 4.9.1] on linux
>Type "help", "copyright", "credits" or "license" for more information.
>>> import cv2
>>> 
>>> exit()
-----------------

## Install python3.6 (Dont use)

$ sudo apt-get update && sudo apt-get upgrade

$wget -O Python-3.6.4.tgz https://www.python.org/ftp/python/3.6.4/Python-3.6.4.t$gz

$sudo tar xzvf Python-3.6.4.tgz

$cd Python-3.6.4/

$sudo ./configure

$sudo make

$sudo make install

$make -j4                                                                       

##Time

$ sudo apt-get purge wolfram-engine

$ sudo apt-get purge libreoffice*

$ sudo apt-get clean

$ sudo apt-get autoremove

##Version up pip

download get-pip from "https://bootstrap.pypa.io/get-pip.py"
by curl, by wget, or from browser.
cace of curl
$curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py

$sudo python get-pip.py

##I cant pip3...

$sudo apt-get install libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev
[https://stackoverflow.com/questions/41328451/ssl-module-in-python-is-not-available-when-installing-package-with-pip3]

$(changedir python3.6)
$./configure
$sudo make
$sudo make install

$(Do add recomended arguments that be said after make_install )
$sudo make
$sudo make install

$sudo pip3 install numpy

#??
## Install OpenCv python3 !
Download opencv.zip or GitClone opencv
I pay 5 days this step.
RaspberryPi had hi temp. be OverHeated. should preper KeepCooler method.

$ cd
$(cd <prefer DIR>)
$ wget -O opencv.zip https://github.com/Itseez/opencv/archive/3.3.0.zip
$ unzip opencv.zip
$ wget -O opencv_contrib.zip https://github.com/Itseez/opencv_contrib/archive/3.3.0.zip
$ unzip opencv_contrib.zip


$ls
Python-3.6.4.tgz  opencv-3.3.0/  opencv_contrib-3.3.0/  yum/
Python-3.6.4/  get-pip.py        opencv.zip     opencv_contrib.zip

$cd opencv-3.3.0
$ mkdir build
$ cd build
$ cmake -D CMAKE_BUILD_TYPE=RELEASE \
     -D CMAKE_INSTALL_PREFIX=/usr/local \
     -D INSTALL_PYTHON_EXAMPLES=ON \
     -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib-3.3.0/modules \
     -D BUILD_EXAMPLES=ON ..
     
("~/opencv_contrib/modules" is transfer your dir path.)

.
.
.
>-- Configuring done
>-- Generating done
>-- Build files have been written to: /home/username/opencv-3.3.0/build

(said "...done  ..,done ...". success!)

$make -j4                                                                       
'''
Scanning dependencies of target carotene_objs
Scanning dependencies of target IlmImf
Scanning dependencies of target libwebp
Scanning dependencies of target libprotobuf
[  0%] Building CXX object 3rdparty/carotene/hal/carotene/CMakeFiles/carotene_objs.dir/src/absdiff.cpp.o
[  0%] Building C object 3rdparty/libwebp/CMakeFiles/libwebp.dir/dec/alpha_dec.c.o
[  0%] Building CXX object 3rdparty/openexr/CMakeFiles/IlmImf.dir/Half/half.cpp.o
[  0%] Building CXX object 3rdparty/protobuf/CMakeFiles/libprotobuf.dir/src/google/protobuf/arena.cc.o
[  0%] Building CXX object 3rdparty/carotene/hal/carotene/CMakeFiles/carotene_objs.dir/src/accumulate.cpp.o

.
.
.
[100%]......Demo

$

$sudo make install
.
.

[ 82%]...

[ 83%]...

[ 84%]...

..
.

$

---------
Done!

## Test python3 cv2!
$ python3                            [~]
Python 3.6.4 (default, May 10 2018, 22:29:25) 
[GCC 4.9.2] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> import cv2
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
ModuleNotFoundError: No module named 'cv2'

--------
???

$btlear@pi% python3.4                          [~]
Python 3.4.2 (default, Oct 19 2014, 13:31:11) 
[GCC 4.9.1] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> import cv2
>>> 
>>> exit()
--------
Done!

##??
python2
$ sudo apt-get install python-opencv
$ sudo apt-get -yV install python3-numpy python3-scipy python3-matplotlib



# Contribution

# Author

[araki2410](https://github.com/araki2410)

# Reference
[http://www.sasapy.com/raspi/raspiban_install_python36/] (ラズパイ (Raspbian) にPython3.6をインストールする)
https://www.pyimagesearch.com/2017/10/09/optimizing-opencv-on-the-raspberry-pi/
[https://qiita.com/gyu-don/items/35f40c4649cfec3bcd40] (Raspbian OSからpipでのパッケージダウンロードや、httpsでのアクセスができないと思ったら時計ずれてただけだった話。)
[https://stackoverflow.com/questions/41328451/ssl-module-in-python-is-not-available-when-installing-package-with-pip3] (“SSL module in Python is not available” when installing package with pip3“)
[https://qiita.com/nanbuwks/items/422eb405ceef84826ab4] (OpenCV + Python3 on Raspberry Pi)
----[
[https://leico.github.io/TechnicalNote/Linux/webcam-usage] (Linux: 利用できるWebカメラの情報を取得する)
[https://qiita.com/wkentaro/items/3d3bee56445894da879e] (Python+OpenCVでカメラキャプチャ)
[https://qiita.com/mix_dvd/items/98feedc8c98bc7790b30] (Webカメラを使ってリアルタイムに顔検出してみる)
