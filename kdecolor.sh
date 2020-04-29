#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
elif [ $# -eq 1 ]; then
        echo "One path supplied"
        echo "Shuffling image from path"
        drive="$1"
        randm=$(ls "$drive" | shuf -n 1)
        fullpath=$(echo "$drive/$randm")
        echo "Setting wallpaper to shuffled image from path:"
        echo $fullpath
        dbus-send --session --dest=org.kde.plasmashell --type=method_call /PlasmaShell org.kde.PlasmaShell.evaluateScript 'string:
        var Desktops = desktops();
        for (i=0;i<Desktops.length;i++) {
                d = Desktops[i];
                d.wallpaperPlugin = "org.kde.image";
                d.currentConfigGroup = Array("Wallpaper",
                                        "org.kde.image",
                                        "General");
                d.writeConfig("Image", "'"$fullpath"'");
        }'
        echo "Switching terminal colors to new image"
        wal -i "$newpath"
elif [ $# -eq 2 ]; then
        echo "Two paths supplied"
        echo "Shuffling image from first path"
        drive="$1"
        randm=$(ls "$drive" | shuf -n 1)
        fullpath=$(echo "$drive$randm")
        newpath=$(echo "$2$randm")
        echo "Copying over and setting wallpaper to shuffled image from path:"
        echo $fullpath
        cp -rf "$fullpath" "$newpath"
        dbus-send --session --dest=org.kde.plasmashell --type=method_call /PlasmaShell org.kde.PlasmaShell.evaluateScript 'string:
        var Desktops = desktops();
        for (i=0;i<Desktops.length;i++) {
                d = Desktops[i];
                d.wallpaperPlugin = "org.kde.image";
                d.currentConfigGroup = Array("Wallpaper",
                                        "org.kde.image",
                                        "General");
                d.writeConfig("Image", "'"$newpath"'");
        }'
        echo "Switching terminal colors to new image"
        wal -i "$newpath"
fi




