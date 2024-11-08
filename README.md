# Pali sanksrit keyboard for Linux With Installation Script
A script to install linux keyboard for typing pāli and sanskrit diactrics ( i.e ā ī ū ē ō ñ ṭ ḍ ṇ ḷ ḥ ś ṣ ṛ ṝ ṃ ŋ ṁ √ ) .

# Installation
## First Method
You can use the `us` keybaord to overwrite your existing us keybaord in `/usr/share/X11/xkb/symbols` , and type diacritics with the `right alt` key . 
> sudo cp src/us /usr/share/X11/xkb/symbols
## Another Method
1. Run this command...
> cd to-script-directory
>
> sudo sh install.sh
2. Reboot.
3. type diacritics with the `right alt` key. 
## What does the installation script do?

### Instructions
1. Copy the file `pi` into `/usr/share/X11/xkb/symbols` .
2. Navigate to `/usr/share/X11/xkb/rules` .
3. Backup the origins to backup folder and add the following lines of code above `</layoutList>` in `evdev.xml` and `base.xml` .
````
<layout>
      <configItem>
        <name>pi</name>
        <shortDescription>pli</shortDescription>
        <description>Pali</description>
        <languageList>
          <iso639Id>pi</iso639Id>
        </languageList>
      </configItem>
      <variantList/>
</layout>
````
4. Reboot .
5. Open system settings > keyboard > layouts . 
3. Click '+' to add a langauge .
4. Search `Pali` and add it .
11. Type pāli āṇḍ śāṇśkṛīṭ diactrics with shift key . 

#Be on your own risk
Thank you the original repository wh
