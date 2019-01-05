#!/bin/bash
drive="/run/media/human/Aka/Google Drive/Wallpapers"
randm=$(ls "$drive" | shuf -n 1)
fullpath=$(echo "$drive/$randm")
newpath=$(echo "/home/human/Wallpaper/$randm")
echo $fullpath
cp -rf "$fullpath" "$newpath"
wal -gi "$newpath"
dbus-send --session --dest=org.kde.plasmashell --type=method_call /PlasmaShell org.kde.PlasmaShell.evaluateScript 'string:
var Desktops = desktops();
 //         /run/media/human/Aka/Google Drive/Wallpapers/1513489791840.jpg                                                                                                          
for (i=0;i<Desktops.length;i++) {
        d = Desktops[i];
        d.wallpaperPlugin = "org.kde.image";
        d.currentConfigGroup = Array("Wallpaper",
                                    "org.kde.image",
                                    "General");
        d.writeConfig("Image", "'"$newpath"'");
}'

