#!/bin/bash

# This script is used to generate
# a project from specified templates
#
# @author YarikRevich


JAVA=false
GO=false
REACT_APP_TS=false
VAGRANT=false

OUT_DIR="$2"
OUT_DIR_LEN=${#OUT_DIR}

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
        --vagrant)
            VAGRANT=true
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
    if [ "$OUT_DIR_LEN" = 0 ]; then
        git clone https://github.com/YarikRevich/golang_template.git > /dev/null
    else
        git clone https://github.com/YarikRevich/golang_template.git "$OUT_DIR" > /dev/null
    fi;

    echo "$(tput setaf 4) Golang template initializing finished!"
fi;

if [ "$JAVA" = true ]; then
    if [ "$OUT_DIR_LEN" = 0 ]; then
        git clone https://github.com/YarikRevich/java_maven_template.git > /dev/null
    else
        git clone https://github.com/YarikRevich/java_maven_template.git "$OUT_DIR" > /dev/null
    fi;

    echo "$(tput setaf 4) Java template initializing finished!"
fi;

if [ "$REACT_APP_TS" = true ]; then
    if [ "$OUT_DIR_LEN" = 0 ]; then
        git clone https://github.com/YarikRevich/react-app-ts_template.git > /dev/null
    else
        git clone https://github.com/YarikRevich/react-app-ts_template.git "$OUT_DIR" > /dev/null
    fi;

    echo "$(tput setaf 4) React app using TypeScript template initializing finished!"
fi;

if [ "$VAGRANT" = true ]; then
    if [ "$OUT_DIR_LEN" = 0 ]; then
        git clone https://github.com/YarikRevich/vagrant_template.git > /dev/null
    else
        git clone https://github.com/YarikRevich/vagrant_template.git "$OUT_DIR" > /dev/null
    fi;

    echo "$(tput setaf 4)Vagrant template was initializing finished!"
fi;

