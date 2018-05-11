0Name
====

Overview

## Requirement
## Usage

## Install
###install python3.6
$wget -O Python-3.6.4.tgz https://www.python.org/ftp/python/3.6.4/Python-3.6.4.t$gz
$sudo tar xzvf Python-3.6.4.tgz
$cd Python-3.6.4/
$sudo ./configure
$sudo make
$sudo make install


###Time
$ sudo apt-get purge wolfram-engine
$ sudo apt-get purge libreoffice*
$ sudo apt-get clean
$ sudo apt-get autoremove

###Version up pip
download get-pip from "https://bootstrap.pypa.io/get-pip.py"
by curl, by wget, or from browser.
cace of curl
$curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py

$sudo python get-pip.py

###I cant pip3...
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



$ sudo apt-get update && sudo apt-get upgrade
$ sudo apt-get install build-essential cmake pkg-config
$ sudo apt-get install libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev
$ sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
$ sudo apt-get install libxvidcore-dev libx264-dev
$ sudo apt-get install libgtk2.0-dev libgtk-3-dev
$ sudo apt-get install "libcanberra-gtk*"
$ sudo apt-get install libatlas-base-dev gfortran
$ sudo apt-get install python2.7-dev python3-dev

$ cd ~
$ wget -O opencv.zip https://github.com/Itseez/opencv/archive/3.3.0.zip
$ unzip opencv.zip
$ wget -O opencv_contrib.zip https://github.com/Itseez/opencv_contrib/archive/3.3.0.zip
$ unzip opencv_contrib.zip




python2
$ sudo apt-get install python-opencv
$ sudo apt-get -yV install python3-numpy python3-scipy python3-matplotlib



## Contribution

## Author

[araki2410](https://github.com/araki2410)

## Reference
[http://www.sasapy.com/raspi/raspiban_install_python36/](ラズパイ (Raspbian) にPython3.6をインストールする)
https://www.pyimagesearch.com/2017/10/09/optimizing-opencv-on-the-raspberry-pi/
[https://qiita.com/gyu-don/items/35f40c4649cfec3bcd40](Raspbian OSからpipでのパッケージダウンロードや、httpsでのアクセスができないと思ったら時計ずれてただけだった話。)
[https://stackoverflow.com/questions/41328451/ssl-module-in-python-is-not-available-when-installing-package-with-pip3](“SSL module in Python is not available” when installing package with pip3“)