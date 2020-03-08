#! /usr/bin/env bash
conda activate base
git clone --depth 1 "$1" temp-linecount-repo
printf "('temp-linecount-repo' will be deleted automatically)\n\n\n"
pygount temp-linecount-repo
i=0
sum=0
for var in $(pygount temp-linecount-repo); do
	if [ $((i%4)) == 0 ]; then
		sum=$((sum + var))
	fi
	let i+=1
done
echo "Total lines of code: $sum"
conda deactivate
rm -rf temp-linecount-repo