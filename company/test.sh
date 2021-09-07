

#! /bin/bash

cd /home/y/.emacs.d/elpa/company-2* &&\

    # var=$(cd `dirname $0`; pwd) &&\

    # var=$(cd "$(dirname "$0")";pwd) &&\

    var=$(pwd) &&\

    var=${var##*/} &&\

    obj=$var &&\
	
    echo "The var directory is $obj" &&\

    times=$(date +%Y-%m-%d) &&\

    echo "$times"


	
