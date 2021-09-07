

# 目的：
#      把个人 需要 关键字  字典 写入目标文件下。

# 流程：
# 判断目标字典 是否存在。

# 判断字典是否已经存在 个人关键字

# 写入 个人关键字 并删除不需要的文件



# 以前版本号version
ver_company="company-20210826.2148"

# 获取当前时间作为elpa目录名
times=$(date +%Y-%m-%d)

dir_company="/home/y/.emacs.d/elpa/${ver_company}"

y_dict="/home/y/y-git/emacs/company"

# find_file="${dir_company}/company-keywords.el"
# find_str="y-base"

if [ -d "/home/y/.emacs.d/elpa" ]; then
    # 进入目标目录文件夹下
    cd /home/y/.emacs.d/elpa/company-2* &&\

	# 获取当前目录文件夹路径
	# var=$(cd `dirname $0`; pwd) &&\	
	# var=$(cd "$(dirname "$0")";pwd) &&\
	    # $0                       : 取当前路径
	# dirname "$0"             : 取当前路径的父目录
	# $(dirname "$0")          : 取返回父目录的值
	# cd "(dirname "$0")"      : cd到返回父目录
	# cd "$(dirname "$0")";pwd : 输出地址给变量

	# echo "$var" &&\

	var=$(pwd) &&\
	    
	# 获取目录文件名 名字
	var=${var##*/} &&\

	# echo "$var" &&\

	# 获取当前修订版本号 revision
	rev_company=${var} &&\
	    
	echo -e "\033[31m 新版本号${rev_company} \033[0m" &&\
	    
	echo -e "\033[36m 旧版本号${ver_company} \033[0m"  &&\

	# 检查版本号是否一样，便于修改字典内的版本号
	if [ "${ver_company}" == "${rev_company}" ]; then
	    
	    echo -e "\033[33m 新版本号 和 旧版本号 一样!!! \033[0m"  &&\
		
		/home/y/y-git/snippets/yas.sh &&\

		echo -e "\033[35m 已经把 yas备份模板 复制到.emacs.d文件下 \033[0m" &&\
		    
		# 检查company-keywords.el.back是否存在，存在说明是第二次添加关键字
		if [ ! -f "${dir_company}/company-keywords.el.back" ]; then

		    echo "company-keywords.el.back 不存在, 第一次添加 关键字" &&\
			
			cp ${dir_company}/company-keywords.el \
			   ${dir_company}/company-keywords.el.back &&\

			rm -rf ${dir_company}/company-keywords.elc &&\

			echo "已经删除 company-keywords.elc文件 " &&\

			/home/y/y-git/emacs/company/dict.sh
		    
		else
		    echo "company-keywords.el.back 已经存在，此为增加 关键字" &&\
			
			rm -rf ${dir_company}/company-keywords.el &&\
			    
			cp ${dir_company}/company-keywords.el.back \
			   ${dir_company}/company-keywords.el     &&\
			   
			/home/y/y-git/emacs/company/dict.sh
		fi
	    
	else
	    sed -i "s/${ver_company}/${rev_company}/g" \
		`grep ${ver_company} -rl ${y_dict}`       &&\
		
		# 将不同版本复制到制定目录下，方便新版有问题修改
		cp -rf /home/y/.emacs.d/elpa/ \
		   /home/y/y-git/y-elpa/${times}/  &&\

		echo "已将elpa文件复制完成" &&\

		echo "旧版本号 已经改成 新版本号" &&\

		echo -e "\033[31m 请 重新 执行一次 该脚本！！！ \033[0m"	    		 
	fi
else
    echo " 不存在 elpa 目录"
fi


# # 某文件内是否有该字符
# find_file_data="${y_dict}/dictionary/0-base/add-base.sh"
# if [  `grep -c "$rev_company" "$find_file_data"` -ne 0  ]; then
#     echo "旧版本号 已经修改成 新版本号!!!" &&\
    
# else
#     echo "旧文件没有修改成功？？？"
# fi

# 延迟10s
# sleep 10s &&\
