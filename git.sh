

#!/bin/bash

YEAR_MON_DAY=$(date -d "yesterday" +"%Y-%m-%d-%T-%j-%V") &&\

git pull &&\
   
git init &&\

git add . &&\

git commit -a -m "$YEAR_MON_DAY" &&\

#git commit -a &&\

git push origin main &&\

	   echo $?

