#!/bin/bash

ssh -i /home/jenkins/.ssh/id_rsa ubuntu@54.72.173.119 << EOF
git clone https://github.com/sa-mh/Project-Flask-App
cp run-tests.sh Project-Flask-App
cd Project-Flask-App
ls
bash run-tests.sh
cd ..
EOF