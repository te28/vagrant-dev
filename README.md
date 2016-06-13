# テスト環境（LAMP）構築用 Vagrant

## 概要

LAMP環境で表示の検証やテストを行いたい場合の
リポジトリを作成しました。

## 動作環境

* [Virtual Box](https://www.virtualbox.org/)
* [Vagrant](https://www.virtualbox.org/)

## 使用方法

1. 当リポジトリをcloneします。

```
$ git clone https://github.com/te28/vagrant-dev
```

2. cloneしたディレクトリに移動し、vagrant upします。

```
$ cd vagrant-dev
$ vagrant up
```

3. [http://dev.local](http://dev.local)にアクセスして、ページが表示されればOKです。

## 環境

* CentOS 6.7
* PHP 5.6
* MySQL 5.6
* Apache 2.2

### ドキュメントルート

```
/var/www/html
```

## 注意点

ローカル用の環境なので、セキュリティ面については考慮していません。
