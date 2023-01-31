#!/bin/bash -e
echo "Hello ${INPUT_who-to-greet}"
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT