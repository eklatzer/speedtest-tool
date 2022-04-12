#! /bin/bash

###################################################################
#Script Name	:   speedtest.sh                                                                                         
#Description	:   Calls the speedtest cli and writes the ping, download and upload to a local InfluxDB-database                                                                                                                                                                        
#Author       	:   Eric Klatzer                                              
#Email         	:   eric@klatzer.at                                         
###################################################################
source <(sed $'s/\r$//' .env)

result=$(/usr/bin/speedtest --format=json)

ping=$(jq '.ping.latency' <<< "${result}")
download=$(jq '.download.bandwidth' <<< "${result}")
upload=$(jq '.upload.bandwidth' <<< "${result}")

curl -i -XPOST "http://localhost:8086/write?db=speedtest&u=${INFLUXDB_PASSWORD}&p=${INFLUXDB_PASSWORD}" --data-binary "results ping=${ping},download=${download},upload=${upload}"