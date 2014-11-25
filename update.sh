#!/bin/sh
echo "Updating..."
git submodule foreach git pull origin master
