#!/bin/bash
#function that makes a Holberton project ready executable file

echo -e '#!/bin/bash' " \n$1" >$2 && chmod u+x $2

echo Answer=$1, File=$2
