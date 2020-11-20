#!/bin/bash

ssh -i /home/jenkins/.ssh/id_rsa ubuntu@54.72.173.119 << EOF

bash run-test.sh

EOF
