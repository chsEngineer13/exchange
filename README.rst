================
geonode-exchange
================

.. image:: https://travis-ci.org/boundlessgeo/exchange.svg?branch=master
    :target: https://travis-ci.org/boundlessgeo/exchange

geonode-exchange is a django project built on GeoNode.

---------
Run Tests
---------
Steps to run tests locally:

.. code-block:: bash

   pip install pytest-cov
   export DJANGO_SETTINGS_MODULE='exchange.settings'
   export SETTINGS='TEST'
   python manage.py migrate
   python manage.py collectstatic --noinput
   py.test --ignore=tests/ \
           --cov-report html:cov_html \
           --cov=exchange exchange/tests/
