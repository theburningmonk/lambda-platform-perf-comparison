#!/bin/bash
declare -a folders=("csharp" "csharp2" "fsharp" "fsharp2" "go" "java" "python" "python3" "nodejs4" "nodejs6")

export AWS_PROFILE=personal

for i in `seq 1 10`;
do
  for folder in "${folders[@]}"
  do
    cd $folder
    pwd
    
    sls deploy --region ap-southeast-2

    cd ..
  done

done