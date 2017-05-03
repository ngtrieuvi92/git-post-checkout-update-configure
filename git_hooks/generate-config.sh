#!/bin/bash
set -e 

# Get repository_name variable
repository_name=$1

echo "Determining branch ... "
branch=`git rev-parse --abbrev-ref HEAD` 
echo "New branch is $branch" 

echo "Generating index.js file for new brach ..."
# Select buildEnd based on git branch, default is "dev"
buildEnv="dev"
case "$branch" in
   "master") buildEnv="production"
      ;;
   "staging") buildEnv="staging"
      ;;
   "testing") buildEnv="testing"
      ;;
esac

echo "Generating index.js file for $buildEnv environment"

cp ./git_hooks/files/index.tpl.js ./git_hooks/files/index.tmp.js
sed 's/BUILD_ENV_CONST/'"${buildEnv}"'/g' ./git_hooks/files/index.tmp.js > ./src/config/index.js 
echo "Generated new index.js file"

exec git update-server-info
