#!/bin/bash
declare -a folders=("csharp" "csharp2" "fsharp" "fsharp2" "go" "java" "python" "python3" "nodejs4" "nodejs6", "python-go")

export AWS_PROFILE=default
export AWS_REGION=us-east-1

for i in `seq 1 11`;
do
  for folder in "${folders[@]}"
  do
    cd $folder
    pwd
    
    sls deploy --region $AWS_REGION

    cd ..
  done

done
