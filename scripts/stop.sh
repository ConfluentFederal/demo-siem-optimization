#!/bin/bash

# This script will stop all running containers and reset the
# persistent folders for zookeeper and the broker

docker-compose down -v
