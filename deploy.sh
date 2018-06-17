#!/bin/bash

ssh-add ~/.ssh/id_rsa
rm -rf public/*
hugo
git add .
git commit -m "Content update"
git push
aws s3 sync public/ s3://www.kevops.co.uk/ --delete --profile kevops
echo "All done"
