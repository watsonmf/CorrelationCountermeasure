#!/bin/bash       
# start Click with specified click file
# click file much be located in click_scripts directory
# correlation output will be placed in the /results/TIMESTAMP directory

click_file=$(pwd)/click_scripts/$1
click_program=$(pwd)/click-master/installdir/bin/click

results_dir=$(pwd)/results
output_dir=$results_dir/raw/$(date +%Y%m%d%H%M%S)/

mkdir $output_dir
cd $output_dir

echo "Running $1 - Please press ctrl+c when test is complete"

sudo $click_program $click_file


