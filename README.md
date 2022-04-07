로컬에 미니쿠브를 먼저 설치해야 한다.

```
brew install minikube
```

Dockerfile 이미지 생성되는 곳을 확인한다.

```
docker run -d -p 80:8080 --name kopring-sample kopring:0.2
```
로컬 도커 이미지 실행하기 위한 명령어
```
eval $(minikube -p minikube docker-env)
```
도커 이미지를 생성한다.
```
docker build -t kopring:0.2 .
```
쿠버네티스 실행
```
kubectl create -f k8s.yml
```
Pod 확인

kubectl get pods
```
NAME            READY   STATUS    RESTARTS   AGE
hello-kopring   1/1     Running   0          8s
```
