#!/bin/bash
pipeline_stage=$1
webhook_url=$2
message="{'text':'The build failed at "$pipeline_stage" stage'}"
curl -H 'Content-Type: application/json' -d "$message" "$webhook_url"