#!/bin/bash
#
#python first
# Python and associated libraries first
sudo apt-get update
sudo apt-get install python-pip python-dev build-essential
#Actual Packages:
sudo pip install numpy
sudo apt-get install libatlas-base-dev gfortran
sudo pip install scipy
#Optional Packages:
#OR  sudo apt-get install python-matplotlib
sudo pip install matplotlib
sudo pip install -U scikit-learn
sudo pip install pandas
# Scrapy for web-scraping and dependencies
sudo apt-get install libxml2-dev libxslt-dev
sudo pip install lxml
sudo pip install Scrapy
sudo pip install beautifulsoup4

#
#install git
#
sudo apt-get install git


#
# set up nice vim rc
git clone git://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_basic_vimrc.sh


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
