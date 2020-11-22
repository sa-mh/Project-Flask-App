#!/bin/bash

ssh -i /home/jenkins/.ssh/id_rsa ubuntu@34.253.241.60 << EOF
git clone https://github.com/sa-mh/Project-Flask-App
cp run-tests.sh Project-Flask-App
cp docker-compose.yaml Project-Flask-App
cd Project-Flask-App
sudo docker login -u horners -p ProjectPassword
cd frontend
sudo docker build -t horners/frontend:latest .
cd ../backend
sudo docker build -t horners/backend:latest .
sudo docker push horners/backend:latest
sudo docker push horners/frontend:latest
cd ..
ls
bash run-tests.sh
cd ..
sudo rm -r Project-Flask-App
EOF
