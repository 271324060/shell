#!/bin/bash
read -p '请输入baseurl:' baseurl
mv /etc/yum.repos.d/*.repo{,.bak} &> /dev/null
echo "[rhel7]
name=rhel7.4
baseurl=$baseurl
enable=1
gpgcheck=0" > /etc/yum.repos.d/rhel7.repo
