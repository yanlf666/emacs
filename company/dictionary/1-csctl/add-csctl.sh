

#!/bin/bash

ver_company="company-20210826.2148"
#ynum="53"
ydir="1-csctl"
yfile="csctl.el"

source_dir="/home/y/y-git/emacs/company/dictionary/${ydir}"
obj_dir="/home/y/.emacs.d/elpa/${ver_company}"
#sed -i "${ynum} r /home/y/y-emacs/company/${ydir}/${yfile}" \

sed -i "/y-base/ r ${source_dir}/${yfile}" \
    ${obj_dir}/company-keywords.el &&\
    echo "1-csctl-ok"

