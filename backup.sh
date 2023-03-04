#!/bin/bash
if [[ "$(docker images -q automation:v1 2> /dev/null)" == "" ]];
  then
       [[ "$(docker images -q automation:v1 2> /dev/null)" == "" ]];
  else 
      echo "build new image"
           [[ "$(docker build -t automation:v1 . 2> /dev/null)" == "" ]];
	   [[ "$(trivy image -f json -o ouput.json automation:v1 2> /dev/null)" == "" ]];
	   [[ "$(docker tag  automation:v1 rajkumar167/rajdocker:automationlatest 2> /dev/null)" == "" ]];
	   [[ "$(cosign sign --key cosign.key rajkumar167/rajdocker:automationlatest 2> /dev/null)" == "" ]];
	   #[[ "$(docker push rajkumar167/rajdocker:automationlatest 2> /dev/null )" == ""]]; 
	   [[ "$(docker push rajkumar167/rajdocker:automationlatest 2> /dev/null)" == "" ]];

  # do something
fi

 

	
