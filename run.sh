#!/bin/bash

curl $OPENAPI_PATH > ./specs/swagger.json 

./dapperdox --spec-rewrite-url=#/components=#/definitions -spec-dir ./specs/ -site-url http://localhost:3000 -assets-dir ./content -force-specification-list true -theme=dapperdox-theme-maps -spec-rewrite-url=http://localhost:3123/ -theme-dir ./themes/ 


