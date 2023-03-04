#!/bin/bash
echo "build image"
docker build -t march2:v1 .
echo "test verbanility of the image"
#docker login
#trivy image -f json -o result.json rajkumar167/rajdocker:testingv1
