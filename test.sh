#!/bin/bash

# test for kat

mkdir kat_test
cd kat_test

touch kattest.fuga.hoge
touch kattest
touch kattest.piyo

kat kattest.fuga.hoge

if [ -e kattest`date "+(%Y年%m月%d日版)"`.fuga.hoge ]; then
  echo "kattest.fuga.hoge ok"
else
  echo "kattest.fuga.hoge ng"
fi

kat kattest

if [ -e kattest`date "+(%Y年%m月%d日版)"` ]; then
  echo "kattest ok"
else
  echo "kattest ng"
fi

kat kattest.piyo

if [ -e kattest`date "+(%Y年%m月%d日版)"`.piyo ]; then
  echo "kattest.piyo ok"
else
  echo "kattest.piyo ng"
fi

cd ..

#rm -rf kat_test
