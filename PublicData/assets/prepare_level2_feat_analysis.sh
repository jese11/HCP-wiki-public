#!/bin/bash
### Version 2 GCB

usage() {
  echo "Usage: `basename $0` <Level2_fsf_file>"
  echo "   Prepares lower-level .feat directories for higher-level analyses"
  echo
}

if [ "X${1/*fsf*/match}" == "Xmatch" ]; then
	# Resolve absolute path so we can find Lev1 feat directories later
	fsfname=`echo $(cd $(dirname $1); pwd)/$(basename $1)`;
    shift
else
	echo "The input must be a fsf file"
    usage
    exit -1
fi

# find location of Lev 2 fsf file (because .feat directories may be relative to that location)
if [ ! -e $fsfname ] ; then
  usage 
  echo " "
  echo "A valid Level 2 fsf file must be provided"
  echo "$fsfname does not exist"
  exit -1
else
  fsfdir=`dirname "$fsfname"`;
fi

# This will only work if there are two feat inputs going into Lev 2
# and if there are double-quotes surrounding the feat_files inputs
# grep feat_files variables from Lev2 fsf
RLfeat=`grep -e 'feat_files(1)' $fsfname | tail -1 | cut -d'"' -f2`;
LRfeat=`grep -e 'feat_files(2)' $fsfname | tail -1 | cut -d'"' -f2`;

# ensure these variables end with '.feat', and add '.feat' if they don't
if [[ $RLfeat != *.feat ]]; then RLfeat="${RLfeat}.feat"; fi
if [[ $LRfeat != *.feat ]]; then LRfeat="${LRfeat}.feat"; fi

# check whether RLfeat and LRfeat are absolute paths or relative paths
if [[ $RLfeat == ..*.feat ]]; then
	# path seems to be relative 
	# assume that the .gfeat directory will be created adjacent to $fsfdir
	# strip the first ../ to "get out of the Lev2 .gfeat directory"
	RLfeat="${fsfdir}/`echo $RLfeat | sed -e 's|../||'`";
	RLfeat=`echo $(cd $(dirname $RLfeat); pwd)/$(basename $RLfeat)`;
fi
if [[ $LRfeat == ..*.feat ]]; then
	# path seems to be relative 
	# assume that the .gfeat directory will be created adjacent to $fsfdir
	# strip the first ../ to "get out of the Lev2 .gfeat directory"
	LRfeat="${fsfdir}/`echo $LRfeat | sed -e 's|../||'`";
	LRfeat=`echo $(cd $(dirname $LRfeat); pwd)/$(basename $LRfeat)`;
fi

## if string starts with '/' it is absolute
## else report an error that feat won't work with this path
if [[ $RLfeat != /*.feat ]] || [[ $LRfeat != /*.feat ]]; then
	echo "The paths to the .feat inputs set in the Level 2 fsf file do not appear to be appropriate."
	echo "They should either be absolute paths to the .feat, or relative paths from the inside of the .gfeat outputdir."
	grep -e 'feat_files' $fsfname
	exit -1
fi

numFeat=0;
# find task RL feat run 
if [ ! -d $RLfeat ] ; then
	echo "Cannot find $RLfeat"
else
	((numFeat++))
fi

# find task LR feat run
if [ ! -d $LRfeat ] ; then
	echo "Cannot find $LRfeat"
else
	((numFeat++))
fi

if [ $numFeat -eq 0 ]; then
	echo 'Cannot find any lower-level .feat directories'
	echo "Please run $0 from directory containing the Level2 fsf file"
	echo " "
	usage;
	exit -1
fi

for feat in $RLfeat $LRfeat; do
	# make reg directory
	mkdir -m 775 $feat/reg
	# ln -s necessary files into reg directory
	ln -s $FSLDIR/etc/flirtsch/ident.mat $feat/reg/example_func2standard.mat
	ln -s $FSLDIR/etc/flirtsch/ident.mat $feat/reg/standard2example_func.mat
	ln -s $FSLDIR/data/standard/MNI152_T1_2mm.nii.gz $feat/reg/standard.nii.gz
done

# provide user with message regarding next step
# if only one feat run was found, state that they should run feat analysis on other run, 
	# or not run Lev 2 feat
# if both feat runs were found, tell user how to run feat analysis on Lev2 fsf from that directory
echo "The following directories have been prepared for Level2 feat analysis"
for feat in $RLfeat $LRfeat; do
	if [ -d $feat ] ; then
		echo "$feat"
	fi
done


if [ $numFeat -ne 2 ] ; then
	echo "You should not run Level 2 feat analyses for this participant, because only $numFeat .feat directories are present";
else
	echo "Be certain to cd into `dirname $fsfname` before running feat `basename $fsfname`";
fi
echo 

exit 0;

