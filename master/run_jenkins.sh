#!/bin/bash

HOSTNAME=`hostname -i`
curl --silent -I -u admin:admin http://$HOSTNAME:8080/job/build?token=MY_TOKEN
