#!/usr/bin/env bash

# source common settings
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )";
source $DIR/common.sh

$CMD test geonode.tests.smoke --noinput --nocapture --detailed-errors --verbosity=1 --failfast
$CMD test geonode --noinput --detailed-errors --verbosity=1 --failfast
