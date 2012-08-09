#!/bin/bash
wget ftp://ftp.vim.org/pub/vim/unix/vim-7.3.tar.bz2
bunzip2 vim-7.3.tar.bz2
tar xvf vim-7.3.tar

cd vim73*

#For RHEL
#yum install python-devel
#yum install ruby-devel
#yum install ncurses-devel

#For Debian
sudo apt-get install -y python-dev ruby-dev ncurses-dev

#On rhel systems you need the following
# ./configure --prefix=/usr/local --enable-rubyinterp --enable-pythoninterp --with-features=huge --with-python-config-dir=/usr/lib64/python2.6/config
#The following should work on debian based
./configure --prefix=/usr/local --enable-rubyinterp --enable-pythoninterp --with-features=huge
make
sudo make install
