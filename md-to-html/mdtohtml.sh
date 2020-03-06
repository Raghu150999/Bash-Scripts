#! /bin/bash
IFS=
path=`pwd`
filename="$path/$1"
content=`cat $filename`
output=`curl https://api.github.com/markdown/raw -X "POST" -H "Content-Type: text/plain" -d $content`
html='<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/path/to/style.css" />
</head>
<body>
'"$output"'
</body>
</html>
'
# Get length of the filename
l=${#filename}
let l-=2
filename=${filename:0:l}
filename=$filename"html"
echo $html | cat > $filename
