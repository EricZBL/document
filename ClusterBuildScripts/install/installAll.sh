#!/bin/bash
################################################################################
## Copyright:   HZGOSUN Tech. Co, BigData
## Filename:    installAll.sh
## Description: 安装所有组件的脚本.
## Version:     2.0
## Author:      zhangbaolin
## Created:     2018-6-26
################################################################################

#set -x

cd `dirname $0`
## BIN目录，脚本所在的目录
BIN_DIR=`pwd`
cd ..
## 安装包根目录
ROOT_HOME=`pwd`
## 配置文件目录
CONF_DIR=${ROOT_HOME}/conf
cd ${BIN_DIR}

## 安装mysql
sh mysqlInstall.sh

## 安装jdk
sh jdkInstall.sh

##安装zookeeper
sh zookeeperInstall.sh

##安装hadoop
sh hadoopInstall.sh

##安装hbase
sh hbaseInstall.sh

##安装hive
sh hiveInstall.sh

##安装scala
sh scalaInstall.sh

##安装kafka
sh kafkaInstall.sh

##安装spark
sh sparkInstall.sh

##安装rocketmq
sh rocketmqInstall.sh

##安装haproxy
sh haproxyInstall.sh

##安装elastic
sh elasticInstall.sh

##安装azkaban
sh azkabanInstall.sh

