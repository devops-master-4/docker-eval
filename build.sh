#!/bin/bash

cd planner/
docker build -t planner -f DockerFile_planner .

cd ../worker/
docker build -t worker -f DockerFile_worker .
