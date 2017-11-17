#! /bin/bash/

### This script creates a data analysis project directory.
### Created by Daniel Raff daniel18raff@gmail.com based on lectures by Tiffany Timbers


# Note: I've added the directory containing this script to my PATH
# so it can be run from anywhere

# Modelled README after:
# https://github.com/bdcaf/cookiecutter-r-data-analysis

# Actual directory was modelled after lecture by Tiffany Timbers

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

CURRENT_DIR="$PWD"

echo "Enter the desired name for your project"
echo "(Please use underscores if more than one word)"
read project_name

echo Making $project_name in $CURRENT_DIR

mkdir "$project_name"

cd $project_name

# Creates the directories
mkdir "data"
mkdir "doc"
mkdir "results"
mkdir "src"
mkdir "misc"

# Adds a README file starting from sample template
touch "README.md"
echo "$(cat $DIR/sample_readme_for_script.md)" >> README.md

# Adds the MIT license file
touch "LICENSE.md"
echo "$(cat $DIR/sample_license_mit.md)" >> LICENSE.md
