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
#SERVER_IP=69.28.88.179
#SSH_KEY_PATH=~/.ssh/id_ed25519
#USERNAME=root
#REMOTE_PATH=/

#!/bin/bash

# Server details
SERVER_IP=69.28.88.179
USERNAME=root
PASSWORD=qkPT5Y4dQSnCA9Ac
REMOTE_PATH=/

# Add server's SSH host key to known_hosts
ssh-keyscan $SERVER_IP >> ~/.ssh/known_hosts

# Pull latest code from repository
sshpass -p "$PASSWORD" ssh $USERNAME@$SERVER_IP "cd $REMOTE_PATH && git pull origin main"

# Build Spring Boot application (adjust for Gradle or Maven)
sshpass -p "$PASSWORD" ssh $USERNAME@$SERVER_IP "cd $REMOTE_PATH && ./mvnw clean install"

# Restart application (replace with your actual command)
sshpass -p "$PASSWORD" ssh $USERNAME@$SERVER_IP "sudo systemctl cicd-test"
