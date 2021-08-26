

#!/bin/bash

suppfile="company-20210811.214"

rm -rf /home/y/.emacs.d/elpa/${suppfile}/company-keywords.el &&\
    
    cp /home/y/.emacs.d/elpa/${suppfile}/company-keywords.el.back \
       /home/y/.emacs.d/elpa/${suppfile}/company-keywords.el &&\
    echo "delete-copy-ok"
   
