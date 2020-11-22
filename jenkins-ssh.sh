#!/bin/bash

ssh -i /home/jenkins/.ssh/id_rsa ubuntu@3.249.1.144 << EOF
git clone https://github.com/sa-mh/Project-Flask-App
cp run-tests.sh Project-Flask-App
cp docker-compose.yaml Project-Flask-App
cd Project-Flask-App
ls
bash run-tests.sh
cd ..
sudo rm -r Project-Flask-App
EOF
