 #!/usr/bin/bash 

symbolsPath="/usr/share/X11/xkb/symbols"
rulePath="/usr/share/X11/xkb/rules"
srcPath="src"
tmpPath="tmp"
backupPath="backup"
outPath=$rulePath
baseFile="base.xml"
evdevFile="evdev.xml"
marker="</layoutList>"
subStr='<layout><configItem><name>pi</name><shortDescription>pli</shortDescription><description>Pali</description><languageList><iso639Id>pi</iso639Id></languageList></configItem><variantList/></layout>'
escapedSubStr="${subStr//\//\\\/}"

cp $srcPath/pi $symbolsPath

cp $srcPath/$baseFile $backupPath/$baseFile
cp $srcPath/$evdevFile $backupPath/$evdevFile

cp $srcPath/$baseFile $tmpPath/$baseFile
cp $srcPath/$evdevFile $tmpPath/$evdevFile

sed -i "0,/$marker/{s/$marker/$escapedSubStr$marker/}" $tmpPath/$baseFile
sed -i "0,/$marker/{s/$marker/$escapedSubStr$marker/}" $tmpPath/$evdevFile

xmllint --format $tmpPath/$baseFile > $outPath/$baseFile
xmllint --format $tmpPath/$evdevFile > $outPath/$evdevFile
