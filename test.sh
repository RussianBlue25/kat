#!/usr/bin/env bash

# test for kat

mkdir kat_test
cd kat_test || exit

touch kattest.fuga.hoge
touch kattest
touch kattest.piyo
touch "kattest2(2000年01月01日版).fuga.hoge"
touch "kattest2(2000年01月01日版)"
touch "kattest2(2000年01月01日版).piyo"

../kat kattest.fuga.hoge

if [ -e "kattest$(date "+(%Y年%m月%d日版)").fuga.hoge" ]; then
  echo "kattest.fuga.hoge ok"
else
  echo "kattest.fuga.hoge ng"
  rm -rf kat_test
  exit 1
fi

../kat kattest

if [ -e "kattest$(date "+(%Y年%m月%d日版)")" ]; then
  echo "kattest ok"
else
  echo "kattest ng"
  rm -rf kat_test
  exit 1
fi

../kat kattest.piyo

if [ -e "kattest$(date "+(%Y年%m月%d日版)").piyo" ]; then
  echo "kattest.piyo ok"
else
  echo "kattest.piyo ng"
  rm -rf kat_test
  exit 1
fi

../kat "kattest2(2000年01月01日版).fuga.hoge"

if [ -e "kattest2$(date "+(%Y年%m月%d日版)").fuga.hoge" ]; then
  echo "kattest2(2000年01月01日版).fuga.hoge ok"
else
  echo "kattest2(2000年01月01日版).fuga.hoge ng"
  rm -rf kat_test
  exit 1
fi

../kat "kattest2(2000年01月01日版)"

if [ -e "kattest2$(date "+(%Y年%m月%d日版)")" ]; then
  echo "kattest2(2000年01月01日版) ok"
else
  echo "kattest2(2000年01月01日版) ng"
  rm -rf kat_test
  exit 1
fi

../kat "kattest2(2000年01月01日版).piyo"

if [ -e "kattest2$(date "+(%Y年%m月%d日版)").piyo" ]; then
  echo "kattest2(2000年01月01日版).piyo ok"
else
  echo "kattest2(2000年01月01日版).piyo ng"
  rm -rf kat_test
  exit 1
fi

cd ..

rm -rf kat_test
