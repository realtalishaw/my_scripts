#!/bin/bash

#Sets up a .c file that automatically is formatted for Betty linter comments#

clear
echo
echo -n "What is the file you would like to create:"
read -r filename
echo -n "What is the name of your function? "
read -r function_name
echo -n "What is a short description of $function_name? "
read -r short_description
echo -n "Do you have any parameters? (Y/N) "
read -r parameters

if [ "$parameters" = "Y" ]; then
 echo -n "What is the parameter name?"
 read -r parameter_name
 echo -n "What is the parameter description?"
 read -r parameter_des
fi

echo -n "Description"
read -r description
echo -n "Return:"
read -r return

echo -e "#include <stdio.h>\n#include <stdlib.h>\n\n/**\n* $function_name - $short_description" > $filename

if [ "$parameters" = "Y" ]; then
 echo -e "* @$parameter_name: $parameter_des\n* Decription: $description\n* Return: $return\n*/\n" >> $filename
fi
