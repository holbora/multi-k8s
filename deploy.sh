docker build -t holbora/multi-client:latest -t holbora/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t holbora/multi-server:latest -t holbora/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t holbora/multi-worker:latest -t holbora/multi-worker:$SHA -f ./worker/Dockerfile ./worker

docker push holbora/multi-client:latest
docker push holbora/multi-client:$SHA

docker push holbora/multi-server:latest
docker push holbora/multi-server:$SHA

docker push holbora/multi-worker:latest
docker push holbora/multi-worker:$SHA
