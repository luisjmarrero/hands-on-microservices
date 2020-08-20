#!/usr/bin/env bash

java -jar product-composite-service/build/libs/*.jar &
java -jar product-service/build/libs/*.jar &
java -jar recommendation-service/build/libs/*.jar &
java -jar review-service/build/libs/*.jar &