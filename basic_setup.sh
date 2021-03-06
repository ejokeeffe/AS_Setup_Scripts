#!/bin/bash
#
#python first
# Python and associated libraries first
sudo apt-get update
sudo apt-get install python-pip python-dev build-essential
sudo apt-get install ipython-notebook
#Actual Packages:
sudo pip install numpy
sudo apt-get install libatlas-base-dev gfortran
sudo pip install scipy
#Optional Packages:
#OR  sudo apt-get install python-matplotlib
# may require downloading matplotlib from git
# in which case, get dependcies first
# sudo apt-get build-dep python-matplotlib
# and then install
# git clone git://github.com/matplotlib/matplotlib.git
# cd matplotlib
# sudo python setup.py install
sudo pip install matplotlib
sudo pip install -U scikit-learn
sudo pip install pandas
# Scrapy for web-scraping and dependencies
sudo apt-get install libxml2-dev libxslt-dev
sudo pip install lxml
sudo pip install Scrapy
sudo pip install beautifulsoup4
# Nose
sudo pip install nose
# kml parser
sudo pip install pykml

#
#install git
#
sudo apt-get install git


#
# set up nice vim rc
git clone git://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_basic_vimrc.sh
# and bash
export PS1="\[\e[00;37m\]\t:\[\e[0m\]\[\e[00;33m\]\u\[\e[0m\]\[\e[00;37m\]@\h:\[\e[0m\]\[\e[00;36m\][\w]:\[\e[0m\]\[\e[00;37m\] \[\e[0m\]"

#
# May need to install unzip
sudo apt-get install unzip

#set up python repository - you will need to add username and password
mkdir pythonCode
cd pythonCode
git clone https://github.com/ejokeeffe/Lighthouse.git


# Amazon tools - 
#set up s3cmd - configure this by typing s3cmd --configure once installed
sudo apt-get install s3cmd

#change owner of mnt
sudo chown -R ubuntu /mnt

# install csvtool for viewing csv files
sudo apt-get install csvtool

#install java and ant (might be worth installing 6 also - certainly to do the AWS EMR wikipedia example)
sudo apt-get update
sudo apt-get install openjdk-7-jdk
#may need to install this for gnome 
sudo apt-get install gsettings-desktop-schemas
sudo apt-get install ant
sudo apt-get install maven
#might need to update hava home
export JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk-amd64

#mount ebs drive
lsblk
sudo file -s /dev/xvdf
#if "data" then wipe it
sudo mkfs -t ext4 device_name
sudo mkdir mount_point
sudo mount device_name mount_point

