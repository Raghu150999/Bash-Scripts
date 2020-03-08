for f in $(ls | grep ".eps"); do
	# get length of the string
	l=${#f}
	let l-=3
	c=${f:0:l}
	c=$c"png"
	convert -density 300 $f -resize 1024x1024 $c
done
