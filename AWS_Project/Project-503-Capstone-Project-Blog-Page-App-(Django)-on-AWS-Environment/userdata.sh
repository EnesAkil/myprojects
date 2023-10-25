#!/bin/bash
apt-get update -y
apt-get install git -y
apt-get install python3 -y
cd /home/ubuntu/
TOKEN=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
git clone https://$TOKEN@github.com/EnesAkil/myprojects/AWS_Project/Project-503-Capstone-Project-Blog-Page-App-(Django)-on-AWS-Environment
cd /home/ubuntu/aws-capstone-project-de05
apt install python3-pip -y
apt-get install python3.7-dev libmysqlclient-dev -y
pip3 install -r requirements.txt
cd /home/ubuntu/aws-capstone-project-de05/src
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80