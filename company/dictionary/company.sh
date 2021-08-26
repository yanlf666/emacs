

#!/bin/bash



suppfile="company-20210811.214"

file="/home/y/.emacs.d/elpa/${suppfile}"

if [ ! -f "${file}/company-keywords.el.back" ]; then
    cp ${file}/company-keywords.el ${file}/company-keywords.el.back
else
    echo "该 company-keywords.el.back 存在"
fi

if [ -f "${file}/company-keywords.elc" ]; then
    rm -rf ${file}/company-keywords.elc
else
    echo "company-keywords.elc已经删除"
fi





