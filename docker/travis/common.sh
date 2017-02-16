#!/usr/bin/env bash

# export travis ci specific os env settings
export HOST_IP=`netstat -nr | grep '^0\.0\.0\.0' | awk '{print $2}'`
export ES_URL="http://$HOST_IP:9200/"
export BROKER_URL="amqp://guest:guest@$HOST_IP:5672/"
export DATABASE_URL="postgres://exchange:boundless@$HOST_IP:5432/exchange"
export POSTGIS_URL="postgis://exchange:boundless@$HOST_IP:5432/exchange_data"

# source vendor libs and active venv
source /etc/profile.d/vendor-libs.sh
source /env/bin/activate

# global variables
INSTALL_DIR="/opt/boundless/exchange"
CMD="python $INSTALL_DIR/manage.py"
