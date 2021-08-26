

#!/bin/bash

suppfile="company-20210811.214"
#ynum="53"
ydir="1-csctl"
yfile="csctl.txt"

source_dir="/home/y/y-emacs/company/dictionary/${ydir}"
obj_dir="/home/y/.emacs.d/elpa/${suppfile}"
#sed -i "${ynum} r /home/y/y-emacs/company/${ydir}/${yfile}" \

sed -i "/y-base/ r ${source_dir}/${yfile}" \
    ${obj_dir}/company-keywords.el &&\
    echo "1-csctl-ok"

