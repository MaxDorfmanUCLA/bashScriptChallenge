#!/bin/bash
rm -r bashScriptTest
mkdir bashScriptTest
cd bashScriptTest

#creates files 1-10 .txt
for i in $(seq 10) ; do
   touch ${i}.txt
done

# remove all files with even number names, list all files, odd or even 
# and tell whether they are kept or removed
for f in *; do
    if [ "$(expr $(echo $f | tr -cd 0-9) % 2)" -eq 0 ]; then
         echo  $f even: removed
	 rm $f 
    else
        echo  $f odd: kept
    fi
done

# list all remaining files
echo “All remaining odd numbered files”
for f in *; do
   echo $f
done
