#!/bin/bash

package_name=$1

# Create directory
mkdir -p $package_name

# Copy files into directory
ls | grep -v "$package_name" | grep -v ".git" | xargs -I {} cp -r {} $package_name/

# Exclude unnecessary files
find $package_name -type f \( -iname "*.psd" -o -iname "*.md" \) -exec rm -f {} \;
