#!/bin bash

echo "Going back one commit at a time until the build succeeds..."
sleep 2

buildLastCommit() {
    git checkout HEAD~1 && ./gradlew build
}

until buildLastCommit
do
    echo "Building..."
done
