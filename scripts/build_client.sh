#!/bin/bash

SCRIPT_PATH=`dirname $0`
FULL_PATH=`realpath ${SCRIPT_PATH}/..`
docker run --rm -v ${FULL_PATH}:/stoplight-client openapitools/openapi-generator-cli generate -i /stoplight-client/openapi.yml -g python -o /stoplight-client/ --additional-properties=packageName=tech.client.config
sudo chown -R $USER $FULL_PATH 
