#!/bin/bash

#Download IP Address range
wget https://ip-ranges.amazonaws.com/ip-ranges.json -O ip-ranges.json

#EU-WEST IP Range
jq -r '.prefixes[] | select(.region=="'$1'" and .service=="'$2'").ip_prefix' < ip-ranges.json