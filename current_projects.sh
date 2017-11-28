#!/bin/bash
projects=("2d_Author/18_Norms_Simona" "2d_Author/19_Stroop_Maria" "2d_Author/23_ViTE" "19_AVQ_MCI_Apnee" "20_MnAutobio" "22_ASME" "23_ViMaCC")

for project in "${projects[@]}"; do
    path="$NEXTCLOUD/Notes/$(basename $project)"
    if [ ! -e $path ]; then
        ln -s $NEXTCLOUD/01_Research/01_Projects/$project/.lnb $path;
    fi
done
