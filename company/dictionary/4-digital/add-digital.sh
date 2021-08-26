

#!/bin/bash

suppfile="company-20210811.214"
#ynum="38"
ydir="4-digital"
yfile="digital.txt"

source_dir="/home/y/y-emacs/company/dictionary/${ydir}"
obj_dir="/home/y/.emacs.d/elpa/${suppfile}"

#sed -i "${ynum} r /home/y/y-emacs/company/${ydir}/${yfile}" \

sed -i "/yinterrupt/ r ${source_dir}/${yfile}" \
    ${obj_dir}/company-keywords.el &&\
    echo "4-digital-ok" 

