

#!/bin/bash

folder="/home/y/.emacs.d/elpa"

source_dir="/home/y/y-emacs/company/dictionary/"

cd /home/y/.emacs.d/elpa/company-2* &&\

    
    
    if [ -d "$folder" ]; then
	
	var=$(cd `dirname $0`; pwd) 
	# $0 第0个参数 dirname获取当前目录或者文件的路径
	# cd 到dirname目录路径， pwd显示当前详细路径
	
	var=${var##*/} 
	# 提取末尾/后边文件目录或者文件名
	
	sourcefile="company-20210811.214"


	objectivefile=${var}

	echo "company-mode 版本号：$objectivefile"
	
	if [ "$objectivefile" = "$sourcefile" ]; then
	    echo "和上次版本号一样$sourcefile"
	else
	    sed -i "s/${sourcefile}/${objectivefile}/g" \
		`grep ${sourcefile} -rl ${source_dir}`
	fi
	
    fi
