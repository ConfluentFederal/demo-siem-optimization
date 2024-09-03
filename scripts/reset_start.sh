#!/bin/bash

# This script will stop all running containers and reset the
# persistent folders for zookeeper and the broker

rm -rf zoo broker

mkdir zoo
mkdir zoo/data
mkdir zoo/log

mkdir broker
mkdir broker/data

chmod -R 777 zoo broker

sudo mv spooldir/urlhaus/csv_finished/2020-10-16-urlhaus_sample.csv/2020-10-16-urlhaus_sample.csv spooldir/urlhaus/csv_input
sudo mv spooldir/ad_hosts/csv_finished/ad_servers.csv/ad_servers.csv spooldir/ad_hosts/csv_input

docker-compose -f docker-compose.yml -f kafka-connect/submit-connectors.yml up -d