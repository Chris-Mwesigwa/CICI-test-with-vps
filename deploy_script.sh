#!/bin/bash

## Go to the application directory
#cd /path/to/your/app
#
## Pull the latest code from the repository
#git pull origin main
#
## Build the Spring Boot application
#./gradlew build
#
## Restart the application
#sudo systemctl restart cicd-test


#!/bin/bash

# Server details
SERVER_IP=69.28.88.179
SSH_KEY_PATH=~/.ssh/id_rsa
USERNAME=root
REMOTE_PATH=/

# Navigate to the remote directory
# ssh -i $SSH_KEY_PATH $USERNAME@$SERVER_IP "cd $REMOTE_PATH"

# Pull latest code from repository
ssh -i $SSH_KEY_PATH $USERNAME@$SERVER_IP "cd $REMOTE_PATH && git pull origin main"

# Build Spring Boot application (adjust for Gradle or Maven)
ssh -i $SSH_KEY_PATH $USERNAME@$SERVER_IP "cd $REMOTE_PATH && ./mvnw clean install"

# Restart application (replace with your actual command)
ssh -i $SSH_KEY_PATH $USERNAME@$SERVER_IP "sudo systemctl restart your-application-service-name"
