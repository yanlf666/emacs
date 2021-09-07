

#!/bin/bash

obj_file="/home/y/.emacs"

 cp -rf /home/y/.emacs.d/snippets/* \
   /home/y/y-git/snippets/ &&\

    echo -e "\033[36m 已经把 yasnippets 模板备份到指定目录下 \033[0m" 

if [ -f "${obj_file}" ]; then
    {
	rm /home/y/.emacs.d/ /home/y/.emacs -rf  &&\

	    cp /home/y/y-git/emacs/emacs.back ~/.emacs &&\

	    echo -e "\033[36m 已经把emacs备份文件复制到位 \033[0m" &&\

	    echo -e "\033[36m 请稍后，emacs正在安装 插件 \033[0m"

	    emacs --debug-init;
	
    }   
else
    {
	echo -e "\033[31m 没有目标文件 \033[0m"
	echo -e "\033[35m 没有yasnippets目录 \033[0m"
    }
fi



   
