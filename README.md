# public-mygit

- 修改sshd配置
``` bash
bash <(curl -L -s https://raw.githubusercontent.com/zeroleo12345/public-mygit/master/sshd/replace_sshd_config.sh) | tee sshd_config.diff.log

service sshd restart
```
