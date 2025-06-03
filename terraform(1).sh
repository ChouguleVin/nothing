#!/bin/bash
sudo apt install wget -y
sudo apt-get update && sudo apt-get install -y wget gnupg software-properties-common

wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null


gpg --no-default-keyring \
--keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
--fingerprint

echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list


sudo apt update

sudo apt-get install terraform -y


sudo apt install -y awscli
aws --version




height_input = input("Enter the height: ")
width_input = input("Enter the width: ")

if not (height_input.isdigit() and width_input.isdigit()):
    print("Please enter valid integers for height and width.")
    sys.exit(1)

height = int(height_input)
width = int(width_input)
area = height * width
print("The area of the rectangle is:", area)


#!/bin/bash

sudo apt update
sudp apt upgrade -y
sudo apt install fontconfig git default-jre -y
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyrings.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins -y
systemctl is-active jenkins
