#!/usr/bin/env bash

VERSION="$1"

if [ -z "$VERSION" ]
then
    echo "VERSION is empty"
    exit 1
fi

read -p "Bump version $VERSION? `echo $'\n'"Yes [y], No [n]"` `echo $'\n> '`" -n 1 -r

if [[ ! $REPLY =~ ^[y]$ ]]
then
    echo $'\n'"Bay"
    exit 1
fi

echo -e "version = \"$VERSION\"" > version.gradle

echo $'\n'"git commit -a -m \"Bump version $VERSION\""
