#!/bin/bash

SOURCE_DIR=`pwd`

ZMQ_URL="https://raw.githubusercontent.com/zeromq/cppzmq/master/zmq.hpp"
ZMQ_PATH="/usr/local/include/zmq.hpp"

BOOST_URL="https://github.com/Mikunj/ofxiOSBoost.git"
BOOST_DIR_PATH="$SOURCE_DIR/boost"

OPEN_SSL_URL="https://github.com/x2on/OpenSSL-for-iPhone.git"
OPEN_SSL_DIR_PATH="$SOURCE_DIR/openssl"

SODIUM_URL="https://github.com/jedisct1/libsodium --branch stable"
SODIUM_PATH="$SOURCE_DIR/sodium"

LMDB_DIR_URL="https://github.com/LMDB/lmdb.git"
LMDB_DIR_PATH="$SOURCE_DIR/../lmdb/Sources"

LOKI_URL="https://github.com/TritonNetwork/Tritonprotocol.git"
LOKI_DIR_PATH="$SOURCE_DIR/triton"

echo "============================ Boost ============================"

echo "Cloning ofxiOSBoost from - $BOOST_URL"
git clone -b loki $BOOST_URL $BOOST_DIR_PATH
cd $BOOST_DIR_PATH/scripts/
export BOOST_LIBS="random regex graph random chrono thread signals filesystem system date_time locale serialization program_options thread"
./build-libc++
cd $SOURCE_DIR
