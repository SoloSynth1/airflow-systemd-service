#!/usr/bin/env bash

# Copy service files to systemd
cp airflow-*.service /lib/systemd/system/

# Enable Airflow services
systemctl enable airflow-webserver.service
systemctl enable airflow-scheduler.service

# Start Airflow services
systemctl start airflow-webserver
systemctl start airflow-scheduler