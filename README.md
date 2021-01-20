![CI](https://github.com/RussianBlue25/kat/workflows/CI/badge.svg)

# kat
このリポジトリは研究室向けの内輪ネタです。なんの役にも立ちません。
いろいろとプルリクを送ったりして遊んでGitHubに慣れてみてください。

## how to use
/usr/local/binあたりにkatを放り込んでください。
```
chmod a+x /usr/local/bin/kat #これいらないかも
exec $SHELL -l
kat hogehoge.py
(return hogehoge(20XX年XX月XX日版).py)
```

## how to create a pull request
test.shを実行して、テストが全て通ることを確認してからにしてください。

一応masterへのプルリクとpushでテストが走るようになってます。

enjoy!
