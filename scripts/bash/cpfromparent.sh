#!/bin/bash
#cp from parent template to equivalent child
me=`basename "$0"`;
file=$1;
defaultPath="/var/www/html/wp-content/themes"
defaultParentTheme="twentytwelve"
defaulthChildTheme="$defaultParentTheme-child"
parentTheme=$defaultParentTheme;
childTheme="${parentTheme}-child";

if [ $# -eq 0 ]
  then
    echo "ERROR: filename not provided"
    echo "USAGE:   $me filename [parent theme to copy from] [child theme to copy to]"
    echo "EXAMPLE: $me foo.php"
    exit 1
fi

# The -z switch will test if the expansion of the argument is a null string or not
# ! -z indicates = not null = argument is specified

# These are considered expansion operators. You may read more at:
# http://stackoverflow.com/questions/6482377/check-existence-of-input-argument-in-a-bash-shell-script
# 
parentTheme=${2:-twentytwelve}
childTheme=${3:-${parentTheme}-child}

echo "You are copying file $file from $defaultPath/$parentTheme/$file to $defaultPath/$childTheme";
sudo cp $defaultPath/$parentTheme/$file $defaultPath/$childTheme/
