#!/bin/sh

# Script that generates a KML file from a given XML file.
# Verify is the given files exist.

# $1 -> XML source file
# $2 -> XQuery file including data processing
# $3 -> XSL file with the template of the KML to generate
# $4 -> name of the output file

if [ $# -eq 4 ]
then

	sourcefile=$1
	xqueryfile=$2
	xslfile=$3
	outputname=$4

	if [ ! -e $sourcefile ]
	then 
		echo "ERROR: $sourcefile : No such file." >&2
	elif [ ! -e $xqueryfile ]
	then 
		echo "ERROR: $xqueryfile : No such file." >&2
	elif [ ! -e $xslfile ]
	then
		echo "ERROR: $xslfile : No such file." >&2
	else 	
		basex -bfilename=$sourcefile $xqueryfile > int
		xsltproc $xslfile int > $outputname
		rm int
	fi

else 
	(>&2 echo "ERROR: 4 arguments are needed, but $# arguments were given.")
fi