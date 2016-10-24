#!/bin/sh
set -euo pipefail
IFS=$'\n\t'

function DK_INV()
{
#######NAVIGATION#####
cd ~[Preferred Directory];
ls ;
read -p "To which directory would you like to save the files: " -e DRCTY;
cd "$DRCTY";

#######INPUT#####
    read -p "Text to convert: " -e ToBeConverted ;
    read -p "FileName: " -e FileName ;
    touch $FileName;

cat << EOF >> "$FileName"
${ToBeConverted}
EOF

cat $FileName ;

#####OUTPUT######
    say -v Daniel  -o "$FileName"_GB_M.m4a -f $FileName ; # UK Male
    say -v Serena  -o "$FileName"_GB_F.m4a -f $FileName ; # UK Female
    say -v Ava -o "$FileName"_US_F.m4a -f $FileName ; # US Female
    say -v Tom -o "$FileName"_US_M.m4a -f $FileName ; # US Male
    say -v Lee -o "$FileName"_AU_M.m4a -f $FileName ; # AU Male
    say -v Karen -o "$FileName"_AU_F.m4a -f $FileName ; # AU Female

}

trap DK_INV EXIT
