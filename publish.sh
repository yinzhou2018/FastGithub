#!/bin/bash

output="./publish"
if [ -d "$output" ]; then
    rm -rf "$output"
fi

# dotnet publish -c Release -o "$output/fastgithub_win-x64" ./FastGithub.UI/FastGithub.UI.csproj
# dotnet publish -c Release /p:PublishSingleFile=true /p:PublishTrimmed=true --self-contained -r win-x64 -o "$output/win-x64" ./FastGithub/FastGithub.csproj
# dotnet publish -c Release /p:PublishSingleFile=true /p:PublishTrimmed=true --self-contained -r linux-x64 -o "$output/linux-x64" ./FastGithub/FastGithub.csproj
# dotnet publish -c Release /p:PublishSingleFile=true /p:PublishTrimmed=true --self-contained -r linux-arm64 -o "$output/linux-arm64" ./FastGithub/FastGithub.csproj
# dotnet publish -c Release /p:PublishSingleFile=true /p:PublishTrimmed=true --self-contained -r osx-x64 -o "$output/osx-x64" ./FastGithub/FastGithub.csproj
dotnet publish -c Release /p:PublishSingleFile=true /p:PublishTrimmed=true --self-contained -r osx-arm64 -o "$output/osx-arm64" ./FastGithub/FastGithub.csproj
