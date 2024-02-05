#!/bin/bash

openapi-generator-cli generate -g ruby --additional-properties=library=faraday,gemName=leanix_webhooks_api -i https://app.leanix.net/services/webhooks/v1/api-docs/ -o .

