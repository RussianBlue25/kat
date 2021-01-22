#!/usr/bin/env bash

# test for kat

mkdir kat_test
cd kat_test || exit

touch kattest.fuga.hoge
touch kattest
touch kattest.piyo

../kat kattest.fuga.hoge

if [ -e "kattest$(date "+(%Y年%m月%d日版)").fuga.hoge" ]; then
  echo "kattest.fuga.hoge ok"
else
  echo "kattest.fuga.hoge ng"
  exit 1
fi

../kat kattest.fuga.hoge

if [ -e "kattest$(date "+(%Y年%m月%d日%H時%M分%S秒版)").fuga.hoge" ]; then
  echo "kattest$(date "+(%Y年%m月%d日版)").fuga.hoge ok"
else
  echo "kattest$(date "+(%Y年%m月%d日版)").fuga.hoge ng"
  exit 1
fi

../kat kattest

if [ -e "kattest$(date "+(%Y年%m月%d日版)")" ]; then
  echo "kattest ok"
else
  echo "kattest ng"
  exit 1
fi

../kat kattest

if [ -e "kattest$(date "+(%Y年%m月%d日%H時%M分%S秒版)")" ]; then
  echo "kattest$(date "+(%Y年%m月%d日版)") ok"
else
  echo "kattest$(date "+(%Y年%m月%d日版)") ng"
  exit 1
fi

../kat kattest.piyo

if [ -e "kattest$(date "+(%Y年%m月%d日版)").piyo" ]; then
  echo "kattest.piyo ok"
else
  echo "kattest.piyo ng"
  exit 1
fi

../kat kattest.piyo

if [ -e "kattest$(date "+(%Y年%m月%d日%H時%M分%S秒版)").piyo" ]; then
  echo "kattest$(date "+(%Y年%m月%d日版)").piyo ok"
else
  echo "kattest$(date "+(%Y年%m月%d日版)").piyo ng"
  exit 1
fi

cd ..

rm -rf kat_test
