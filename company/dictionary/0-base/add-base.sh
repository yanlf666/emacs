

#!/bin/bash

suppfile="company-20210811.214"
#ynum="53"
ydir="0-base"
yfile="base.txt"

source_dir="/home/y/y-emacs/company/dictionary/${ydir}"
obj_dir="/home/y/.emacs.d/elpa/${suppfile}"
#sed -i "${ynum} r /home/y/y-emacs/company/${ydir}/${yfile}" \

sed -i "/(c-mode/ r ${source_dir}/${yfile}" \
    ${obj_dir}/company-keywords.el &&\
    echo "0-base-ok"

