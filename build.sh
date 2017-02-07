#!/bin/bash
cd /project/target
find . -type f -wholename "*Godeps/Godeps.json" -print0 | while IFS= read -r -d $'\0' line; do
    cd `dirname $line`/.. && godep restore
done
