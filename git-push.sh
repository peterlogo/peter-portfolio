#!/bin/bash -e

# Author: Peter Logo
# Description: Pushes code to a remote git repository.
#
# stage all files to git
git add .

# enter commit message"
echo "Describe changes :"
read MESSAGE
git commit -m "$MESSAGE"

# push update to remote branch
BRANCH=$(git symbolic-ref --short HEAD)
git push origin $BRANCH
echo "Code pushed to remote branch : $BRANCH"