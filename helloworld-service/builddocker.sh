#!/bin/bash
name='microservices-helloworld-vertx:1.1'
mvn clean package; docker build -t $name .
echo "Image $name built"
