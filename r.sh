DATE=`date +%Y.%m.%d.%H.%M`
#username=<git username>
#password=<password>
DIR=/home/ubuntu/rajkumar167/rajdocker
FILE=/home/ubuntu/rajkumar167/output
container_name=helloworld
if [ -d "$DIR" ];
then
printf '%s\n' "helloworld dir ($DIR)"
rm -rf "$DIR"
else
echo "now no helloworld a dir"
echo "build the docker image"
docker build -t helloworld/sivasai:$DATE . >> /home/ubuntu/rajkumar167/output
echo "built docker images and proceeding to delete existing container"
result=$( docker ps -q -f name=helloworld )
if [[ $? -eq 0 ]]; then
echo "Container exists"
docker container rm -f helloworld
echo "Deleted the existing docker container"
else
echo "No such container"
fi
echo "Deploying the updated container"
docker run -itd -p 3000:3000 --name helloworld $OUTPUT
#echo "Deploying the container"
