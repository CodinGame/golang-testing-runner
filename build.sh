#!/bin/bash
cd /project/target

# We find all source repositories containing a Godeps.json file.
find . -type f -wholename "*Godeps/Godeps.json" -print0 | while IFS= read -r -d $'\0' line; do
	# We install the package versions specified in each repositories' Godeps.json
    cd `dirname $line`/.. && godep restore
done
