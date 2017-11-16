#! /bin/bash/

# Note: I've added the directory containing this script to my PATH
# so it can be run from anywhere

CURRENT_DIR="$PWD"

echo "Enter the desired name for your project"
echo "(Please use underscores if more than one word)"
read project_name

echo Making $project_name in $CURRENT_DIR

mkdir "$project_name"

cd $project_name

mkdir "data"
mkdir "doc"
mkdir "results"
mkdir "src"
mkdir "bin"
mkdir "from_joe"
