#!/bin/bash

classes_to_dilute="./classes_to_dilute.txt"
files_to_dilute_raw="./dilute_train_data_1694662957.log"
files_to_dilute="./dilute_train_data.txt"
echo "reset">$files_to_dilute
for class in $(cat $classes_to_dilute)
do
  grep $class $files_to_dilute_raw >> $files_to_dilute
done
