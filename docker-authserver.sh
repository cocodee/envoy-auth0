export SERVER=192.168.3.71:7890
export HTTP_PROXY=http://$SERVER
export HTTPS_PROXY=http://$SERVER
export http_proxy=http://$SERVER
export https_proxy=http://$SERVER
cd contour-authserver
docker build --build-arg HTTP_PROXY=$HTTP_PROXY \
             --build-arg HTTPS_PROXY=$HTTPS_PROXY \
             --build-arg http_proxy=$http_proxy \
             --build-arg https_proxy=$https_proxy \
             -t authserver -f Dockerfile .