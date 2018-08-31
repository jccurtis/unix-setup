#!/bin/env/bash

wget https://repo.continuum.io/archive/Anaconda3-4.3.0-MacOSX-x86_64.sh -O ~/anaconda_tmp.sh
bash ~/anaconda_tmp.sh -b -p $HOME/anaconda
rm ~/anaconda_tmp.sh

printf "Appending to ~/.bash_profile ...\n"
printf "\n# Activate anaconda\nexport PATH=\"\$HOME/anaconda/bin:\$PATH\"\n" >> ~/.bash_profile


printf "Installing python packages ...\n"
conda install flake8 seaborn future
pip install lmfit progressbar2