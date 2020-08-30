#!/usr/bin/env sh
# 替换sshd服务配置文件: sshd_config 内的相关参数, 以令其可以用root登录!

cp  /etc/ssh/sshd_config  /etc/ssh/sshd_config.bak

sed -i'' 's/^#*PasswordAuthentication [a-z]\{1,9\}$/PasswordAuthentication yes/g' /etc/ssh/sshd_config
sed -i'' 's/^#*PermitRootLogin [a-z]\{1,9\}$/PermitRootLogin yes/g' /etc/ssh/sshd_config
sed -i'' 's/^#GSSAPIAuthentication [a-z]\{1,9\}$/GSSAPIAuthentication no/g' /etc/ssh/sshd_config
sed -i'' 's/^#*UsePAM [a-z]\{1,9\}$/UsePAM no/g' /etc/ssh/sshd_config
 
sed -i'' 's/^#*ClientAliveInterval [0-9]\{1,9\}$/ClientAliveInterval 60/g' /etc/ssh/sshd_config
sed -i'' 's/^#*ClientAliveCountMax [0-9]\{1,9\}$/ClientAliveCountMax 3/g' /etc/ssh/sshd_config
sed -i'' 's/^#*MaxSessions [0-9]\{1,9\}$/MaxSessions 30/g' /etc/ssh/sshd_config

set -o verbose
diff  /etc/ssh/sshd_config  /etc/ssh/sshd_config.bak
