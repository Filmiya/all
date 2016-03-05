#!/bin/bash
#cp from parent template to equivalent child
file=$1;
defaultPath="/var/www/html"
defaultParentTheme="twentytwelve"
defaulthChildTheme="$defaultParentTheme-child"
parentTheme=$defaultParentTheme;
childTheme="${parentTheme}-child";
if [ $# -eq 0 ]
  then
    echo "ERROR: filename not provided"
    echo "USAGE:   cpfromparent.sh filename [parent theme to copy from] [child theme to copy to]"
    echo "EXAMPLE: cpfromparent.sh foo.php"
    exit 1
fi
if [ ! -z "$2" ]
  then
    parentTheme=$2;
    childTheme=${2}-child;
fi
if [ ! -z "$3" ]
  then
    childTheme=$3;
fi
echo "You are copying file $file from $defaultPath/$parentTheme to $defaultPath/$childTheme";
