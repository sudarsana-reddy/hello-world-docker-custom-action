#!/bin/bash -e
echo "Hello ${INPUT_WHOTOGREET}"
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT