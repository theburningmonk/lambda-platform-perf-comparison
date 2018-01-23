#!/bin/bash

# api.txt is a list of API urls 
for api in `cat apis.txt`
do
    echo "testing $api"
    artillery quick -d 600 -r 5 -n 1 $api &
done