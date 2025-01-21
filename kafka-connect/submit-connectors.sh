#!/bin/bash

for connector in ./connectors/*.json; 
do 
  submit-connector.sh $${connector}; 
done