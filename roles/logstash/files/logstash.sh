#!/usr/bin/env bash
#
#     This script is intended to run a microservice as a service
#

API_SERVICE_NAME=logstash
ulimit -u unlimited

export LOG_DIRECTORY=/var/log/${API_SERVICE_NAME}


export JAVA_HOME=/path/to/java/jdk1.8.0_171
LOGSTASH_PATH=/path/to/logstash/logstash-6.6.0
LOGSTASH_CONF=/path/to/logstash/logstash.conf

# Log file for stdout and stderr output.
LOG_FILE_STDOUT=${LOG_DIRECTORY}/${API_SERVICE_NAME}-stdout.log

mkdir -p ${LOG_DIRECTORY}

# Redirects default and error output to a log file


nohup ${LOGSTASH_PATH}/bin/logstash -f $LOGSTASH_CONF > "$LOG_FILE_STDOUT" 2>&1 &