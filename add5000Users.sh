#!/bin/bash

PASS="wjsansrk"

for ((i = 1; i <= 5000; i++)); do
    adduser "USER$i"
done
