#!/bin/bash

rm -rf public/*
git add .
git commit -m "Content update"
aws s3 sync public/ s3://www.kevops.co.uk/ --delete --profile kevops
echo "All done\n"
