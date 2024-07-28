#!/bin/bash

MESSAGE="$1"

if [ -z "$MESSAGE" ]; then
  echo "Error: Commit message not found"
  exit
fi

echo '----- ROOT -----'
git add .
git commit -m "$MESSAGE"
git push

echo ''
echo '----- DEV DEPMAN -----'
cd _dev_depman
git add .
git commit -m "$MESSAGE"
git push
cd ..

