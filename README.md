# テスト環境（LAMP）構築用 Vagrant

## 概要

LAMP環境で表示の検証やテストを行いたい場合の
リポジトリを作成しました。

## 注意点

テスト用なので、セキュリティ面はあまり考慮されていません。

## 使用方法

1.当リポジトリをcloneします。

```
$ git clone https://github.com/te28/vagrant-dev
```

1.cloneしたディレクトリに移動し、vagrant upします。

```
$ cd vagrant-dev
$ vagrant up
```

1.[dev.local](http://dev.local)にアクセスします。



## 環境

* CentOS 6.7
* PHP 5.6
* MySQL 5.6
* Apache 2.2

* ドキュメントルート

  ```
  /var/www/html
  ```
