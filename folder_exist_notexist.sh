#!/bin/bash

check_folderexist_foldernotexist() {


    folder=$1

    if [ -z $folder ]; then
        echo "❌ Error: No folder name provided."
        echo "Usage: create_folder_if_not_exists <folder_name>"
        exit 1
    fi
    if [ -d $folder ]; then  
        echo "$folder folder is a already exist"
    else
        mkdir "$folder"
        echo "$folder folder has been created successfully"
    fi
}
read -p "Enter your folder name: " folder1
check_folderexist_foldernotexist $folder1