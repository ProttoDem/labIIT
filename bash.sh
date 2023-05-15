#! /bin/bash
sudo apt-get update -y
sudo apt-get install -y docker.io
sudo docker run -d --name lab4 -p 80:80 prottodem/lab4
sudo docker run -d --name watchtower -v /var/run/docker.sock:/var/run/docker.sock containrrr/watchtower --schedule "1 * * * *"