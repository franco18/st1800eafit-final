#!/bin/bash


sudo yum install -y gcc-c++ make git
sudo curl -sL https://rpm.nodesource.com/setup_6.x | sudo -E bash -
sudo yum install -y nodejs
sudo npm install -g configurable-http-proxy
sudo pip install pandas
git clone https://github.com/franco18/st1800eafit-final.git
sudo python -m nltk.downloader -d /usr/local/share/nltk_data stopwords
sudo python -m nltk.downloader -d /usr/local/share/nltk_data punkt
sudo python -m nltk.downloader -d /usr/local/share/nltk_data wordnet

virtualenv env --python=python3
cd env
source bin/activate
python3 -m pip install jupyterhub
npm install configurable-http-proxy
python3 -m pip install notebook
easy_install jinja2 sqlalchemy tornado notebook
