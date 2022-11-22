#!/usr/bin/env bash

# Get current location of this script
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# Copy service files to systemd
cp $SCRIPT_DIR/airflow-*.service /lib/systemd/system/

# Enable Airflow services
systemctl enable airflow-webserver.service
systemctl enable airflow-scheduler.service

# Start Airflow services
systemctl start airflow-webserver
systemctl start airflow-scheduler