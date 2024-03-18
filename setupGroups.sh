#!/bin/bash

# Warning: This script is not tested

groupKT=("boser" "haper" "janela" "caley" "qimat" "linda" "timber" "adel" "julia" "miller" "ringo" "sabrina" "dale" "ouker" "surer" "davido" "choser" "kelly" "yester")
groupLGT=("vincent" "tajer" "eille" "edwin" "dewey" "qadani" "willy" "dexter" "jasmin" "robert" "tania" "yummer" "damber" "owner" "siniker")
groupSKT=("edgar" "harper" "devan" "kori" "dana" "genevi" "xandra" "dante" "ximena" "lavina" "vister" "snower" "david" "shiniper" "nower" "kimber" "jini")

# Prompt user to choose primary group
echo "Choose primary group:"
echo "1. KT"
echo "2. LGT"
echo "3. SKT"
read -p "Enter the number corresponding to the group: " choice

# Start Adding groups
case $choice in
  1)
    primary_group="kt"
    ;;
  2)
    primary_group="lgt"
    ;;
  3)
    primary_group="skt"
    ;;
  *)
    echo "Invalid choice. Exiting."
    exit 1
    ;;
esac

groupadd -f -g 1000 kt
groupadd -f -g 1001 skt
groupadd -f -g 1002 lgt

# Start adding users to selected primary group
case $primary_group in
  "kt")
    for i in "${groupKT[@]}"; do
      gpasswd -a "${i}" kt
    done
    ;;
  "lgt")
    for i in "${groupLGT[@]}"; do
      gpasswd -a "${i}" lgt
    done
    ;;
  "skt")
    for i in "${groupSKT[@]}"; do
      gpasswd -a "${i}" skt
    done
    ;;
esac
