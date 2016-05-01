#!/bin/sh
cd $OPENSHIFT_DATA_DIR
wget http://nginx.org/download/nginx-1.2.2.tar.gz
tar zxf nginx-1.2.2.tar.gz
wget http://exim.mirror.fr/pcre/pcre-8.31.tar.bz2
tar jxf pcre-8.31.tar.bz2
mkdir nginx1.2
cd nginx-1.2.2
./configure --with-pcre=$OPENSHIFT_DATA_DIR/pcre-8.31 --prefix=$OPENSHIFT_DATA_DIR/nginx1.2
make
make install
cd $OPENSHIFT_DATA_DIR