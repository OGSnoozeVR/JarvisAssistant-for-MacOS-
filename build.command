#!/bin/bash

echo "=================================="
echo "Building Jarvis AI Assistant"
echo "=================================="

if ! command -v mvn &> /dev/null
then
    echo "Maven not found. Install Maven first."
    exit
fi

mvn clean package

mkdir -p dist

cp target/jarvis-assistant-1.0.jar dist/JarvisAssistant.jar

echo ""
echo "Build finished!"
echo "Jar created at:"
echo "dist/JarvisAssistant.jar"

read -p "Press Enter to exit..."
