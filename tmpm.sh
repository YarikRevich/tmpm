#!/bin/bash

# This script is used to generate
# a project from specified templates
# 
# @author YarikRevich

JAVA=false
GO=false
REACT_APP_TS=false

while [[ $# -gt 0 ]]; do
  case $1 in
    --java)
      JAVA=true
      shift
      shift
      ;;
    --go)
      GO=true
      shift
      shift
      ;;
    --react-app-ts)
      REACT_APP_TS=true
      shift
      shift
      ;;
    -*|--*)
      echo "Unknown option $1"
      exit 1
      ;;
  esac
done

if [ "$GO" = true ]; then
    git clone https://github.com/YarikRevich/golang_template.git
    echo "$(tput setaf 4) Golang template initializing finished!"
fi;

if [ "$JAVA" = true ]; then
    git clone https://github.com/YarikRevich/java_template.git
    echo "$(tput setaf 4) Java template initializing finished!"
fi;

if [ "$REACT_APP_TS" = true ]; then
    git clone https://github.com/YarikRevich/react-app-ts_template.git
    echo "$(tput setaf 4) React app using TypeScript template initializing finished!"
fi;