#!/bin/bash

for i in {0..254}
do
    ping -c 1 "$1.1$" | grep ttl | cut -d " " - f 4 &
done