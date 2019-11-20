#!/bin/bash

declare -a repo_list
repo_list=(
    ["100"]="1"
    ["200"]="2"
)

for key in ${!repo_list[@]}; do
    echo $key ${repo_list[$key]}
done
