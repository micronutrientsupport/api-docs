#!/bin/bash

curl $OPENAPI_PATH > ./specs/swagger.json 

cat ./specs/swagger.json

./dapperdox \
 -spec-rewrite-url=localhost\:3000=$API_PUBLIC_URL \
 -spec-rewrite-url=#/components=#/definitions \
 -bind-addr 0.0.0.0:3123 \
 -spec-dir ./specs/ \
 -assets-dir ./content \
 -force-specification-list true \ 
 -theme=dapperdox-theme-maps \
 -theme-dir ./themes/


