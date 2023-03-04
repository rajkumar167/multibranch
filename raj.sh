#!/bin/bash
# create docker image with tag
set -e
function createimage () {
echo "----------------creating docker image--$1"	
docker image build  -t rajkumar167/rajdocker:automationlatest .


}
# Scan image with trivy
function trivy_scan() {
echo "---------------scan image with trivy in process----------------"	
trivy image -f json -o ouput.json automation:v1
}
# Cosign image with key
function cosignimage () {
#echo "----------------------sign image with private key. please eenter password--------------------------"
cosign sign --key cosign.key rajkumar167/rajdocker:automationlatest
}
# push image on docker hub
function dockerhub () {
echo "----------------------pushing image on dockerhub---------------------------------"
docker push rajkumar167/rajdocker:automationlatest
echo "-------------------------------you have succefully done------------------------"
}
createimage rajcreating image
trivy_scan
cosignimage
dockerhub
