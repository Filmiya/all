#!/bin/bash
#move file to repository
me=`basename "$0"`;
file=$1;
start="";
defaultPath="var/www/html/wp-content/themes";
defaultParentTheme="twentytwelve";
defaulthChildTheme="$defaultParentTheme-child";

repositoryHome="/home/dntrply/git-repos";
repository="$repositoryHome/all";

parentTheme=$defaultParentTheme;
childTheme="${parentTheme}-child";

if [ $# -eq 0 ]
  then
    echo "ERROR: filename not provided"
    echo "USAGE:   $me filename [child theme to copy from]"
    echo "EXAMPLE: $me foo.php"
    exit 1
fi

# The -z switch will test if the expansion of the argument is a null string or not
# ! -z indicates = not null = argument is specified

# These are considered expansion operators. You may read more at:
# http://stackoverflow.com/questions/6482377/check-existence-of-input-argument-in-a-bash-shell-script
# 
childTheme=${3:-${parentTheme}-child}

#echo "sudo cp -r $start/$defaultPath/$childTheme/$file $repository/$defaultPath/$childtheme";
sudo cp -r $start/$defaultPath/$childTheme/$file $repository/$defaultPath/$childtheme
