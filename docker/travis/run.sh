#!/usr/bin/env bash

# source common settings
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $DIR/common.sh

# start django
/env/bin/python $CMD/manage.py runserver 0.0.0.0:8000
