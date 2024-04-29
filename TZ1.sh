#!/bin/bash
input_directory=${1:-'inputp'}
output_directory=${2:-'output'}
first_depth_f=$(find $input_directory -maxdepth 1 -type f)
echo $first_depth_f
first_depth_d=$(find $input_directory -maxdepth 1 -type d)
echo $first_depth_d
file_result=$(find $input_directory -type f)
echo $file_result
for f in $file_result;
do 
cp $f $output_directory;
done
echo $output_directory
