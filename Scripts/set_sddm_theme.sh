#! /bin/bash

path_to_metadata="/usr/share/sddm/themes/sddm-astronaut-theme/metadata.desktop"
text="ConfigFile=Themes/"
theme=$(ls /usr/share/sddm/themes/sddm-astronaut-theme/Themes | shuf | head -1)

modified_line="$text$theme"

sed -i "s|^$text.*|$modified_line|" $path_to_metadata
