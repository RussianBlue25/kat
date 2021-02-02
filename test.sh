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

if find . | grep -E 'kattest\([0-9]+年[0-9]+月[0-9]+日[0-9]+時[0-9]+分[0-9]+秒版\).fuga.hoge' > /dev/null; then
  echo "kattest$(date "+(%Y年%m月%d日版)").fuga.hoge ok"
else
  echo "kattest$(date "+(%Y年%m月%d日版)").fuga.hoge ng"
  exit 1
fi

../kat --reiwa kattest.fuga.hoge

if find . | grep -E 'kattest\(令和[0-9]+年[0-9]+月[0-9]+日版\).fuga.hoge' > /dev/null; then
  echo "kattest.fuga.hoge 令和 ok"
else
  echo "kattest.fuga.hoge 令和 ng"
  exit 1
fi

../kat --reiwa kattest.fuga.hoge

if find . | grep -E 'kattest\(令和[0-9]+年[0-9]+月[0-9]+日[0-9]+時[0-9]+分[0-9]+秒版\).fuga.hoge' > /dev/null; then
  echo "kattest$(date "+(%Y年%m月%d日版)").fuga.hoge 令和 ok"
else
  echo "kattest$(date "+(%Y年%m月%d日版)").fuga.hoge 令和 ng"
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

if find . | grep -E 'kattest\([0-9]+年[0-9]+月[0-9]+日[0-9]+時[0-9]+分[0-9]+秒版\)' > /dev/null; then
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

if find . | grep -E 'kattest\([0-9]+年[0-9]+月[0-9]+日[0-9]+時[0-9]+分[0-9]+秒版\).piyo' > /dev/null; then
  echo "kattest$(date "+(%Y年%m月%d日版)").piyo ok"
else
  echo "kattest$(date "+(%Y年%m月%d日版)").piyo ng"
  exit 1
fi

cd ..

rm -rf kat_test
