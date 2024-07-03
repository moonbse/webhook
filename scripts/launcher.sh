#!/bin/bash

echo "executing the script";

# Read the app-id argument
APP_ID=$1

frontendPath=/home/dockerComposeFiles/frontend;
backendPath=/home/dockerComposeFiles/backend;
blogPath=/home/dockerCompose/Files/blog;

testPath=/Users/nirbhay11.singh/IdeaProjects/PeriscopeBackend;

echo "$APP_ID";
# Change directory based on app-id
if [ "$APP_ID" == "frontend" ]; then
    cd $frontendPath
elif [ "$APP_ID" == "backend" ]; then
    cd $backendPath
elif [ "$APP_ID" == "blog" ]; then
    cd $blogPath
elif [ "$APP_ID" == "test" ]; then
    echo "cd $testPath"
    cd $testPath
else
    echo "Error: Invalid app-id. Valid values are 'frontend', 'backend', or 'blog' or 'test'."
    exit 1
fi

# Ensure the directory change was successful
if [ $? -ne 0 ]; then
    echo "Error: Failed to change directory"
    exit 1
fi


# USERNAME = $DOCKER_USERNAME
# PASSWORD = $DOCKER_PASSWORD

# # docker -version;
# # Log in to Docker Hub, usename and password from environment, later more robust solution 
# echo "Logging in to Docker Hub...";
# docker login -u "$USERNAME" -p "$PASSWORD";

# if [ $? -ne 0 ]; then
#     echo "Error: Docker login failed"
#     exit 1
# fi

# # # Run cleanup commands
# # # Example: Remove old containers and images
# echo "Running cleanup commands..."
# docker compose rm -f


# # # Check if cleanup commands were successful
# if [ $? -ne 0 ]; then
#     echo "Error: Cleanup commands failed"
#     exit 1
# fi

# echo "Pulling fresh images..."
# docker compose pull

# if [ $? -ne 0 ]; then
#     echo "Error: Pulling fresh images"
#     exit 1
# fi


# read the argument passed, if ( frontend, backend, blog )
# change the directory and run 



echo "Running docker compose up..."
docker compose up -d ;


# Check if docker-compose up was successful
if [ $? -ne 0 ]; then
    echo "Error: docker-compose up failed"
    exit 1
fi