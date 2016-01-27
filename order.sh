#!/bin/bash
#

usage() {
cat <<USAGE
Usage:
    bash $0 <file name>
USAGE

}

echo -e "\n INFO: sed $1\n"

sed -i '/Ticket:/'d $1
sed -i '/Change-Id:/'d $1
sed -i '/Signed-off-by:/'d $1
sed -i '/From:/'d $1

# 删除文件中行首的空白符；
# sed  -r 's/^[[:space:]]+//'
# 删除空折行
# sed '/^$/d' $1
# 删除文件中开头的#号；
# sed 's/^#//g'

# 删除/etc/grub.conf文件中行首的空白符；
# sed  -r 's/^[[:space:]]+//' /etc/grub.conf
# 替换/etc/inittab文件中“id:3:initdefault:”一行中的数字为5；
# sed 's/\(id:\)[0-9]\(:initdefault:\)/\15\2/g' /etc/inittab
# 删除/etc/inittab文件中的空白行；
# sed '/^$/d' /etc/inittab
# 删除/etc/inittab文件中开头的#号；
# sed 's/^#//g' /etc/inittab
# 删除某文件中开头的#号及其后面的空白字符，但要求#号后面必须有空白符；
# sed 's/^#[[:space:]]\{1,\}//g' /etc/inittab     或者
# sed  -r 's/^#[[:space:]]+//g' /etc/inittab
# 删除某文件中以空白字符后面跟#类的行中的开头的空白字符及#
# sed -r 's/^[[:space:]]+#//g' /etc/inittab
# 取出一个文件路径的目录名称;
# echo "/etc/rc.d/abc/edu/" | sed -r 's@^(/.*/)[^/]+/?@\1@g'        #因sed支持扩展正则表达式，在扩展正则表达式中，+表示匹配其前面的字符至少1次
# 取出一个文件路径的最后一个文件名；
# echo "/etc/rc.d/abc/edu/" | sed -r 's@^/.*/([^/]+)/?@\1@g'

# 参考：http://coolshell.cn/articles/9104.html

git diff $1
