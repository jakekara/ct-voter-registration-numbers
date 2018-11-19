#!/usr/bin/env sh

#
# clean-mess.sh - convert DB output to CSV
#

for INFILE in $(ls data/*.mess); do
    OUTFILE="$INFILE.csv"

    echo "Processing $INFILE to $OUTFILE"
    
    # Sed string for the sed that comes with MacOS. I think you can use
    # \+ with other other versions
    cat $INFILE | sed 's/   */,/g' > $OUTFILE

done;

