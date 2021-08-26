

#!/bin/bash

suppfile="company-20210811.214"
#ynum="38"
ydir="3-interrupt"
yfile="interrupt.txt"

source_dir="/home/y/y-git/emacs/company/dictionary/${ydir}"
obj_dir="/home/y/.emacs.d/elpa/${suppfile}"

#sed -i "${ynum} r /home/y/y-emacs/company/${ydir}/${yfile}" \

sed -i "/ytimera/ r ${source_dir}/${yfile}" \
    ${obj_dir}/company-keywords.el &&\
    echo "3-interrupt-ok" 

