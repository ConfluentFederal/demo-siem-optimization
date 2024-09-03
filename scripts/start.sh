#!/bin/bash

# This script will stop all running containers and reset the
# persistent folders for zookeeper and the broker

docker-compose -f docker-compose.yml -f kafka-connect/submit-connectors.yml up -d