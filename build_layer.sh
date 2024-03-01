#!/bin/bash

file="pyodbc39.zip"

echo "Creating $file..."
docker --version
#yum install -y docker
service docker start
docker build -t pyodbc-39-x86_64 .
docker run --rm --volume $(pwd):/tmp pyodbc-39-x86_64 cp /pyodbc39.zip /tmp/ 
ls pyodbc39.zip
