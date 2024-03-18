#!/bin/bash

# Warning: This script is not tested

groupKT=("boser" "haper" "janela" "caley" "qimat" "linda" "timber" "adel" "julia" "miller" "ringo" "sabrina" "dale" "ouker" "surer" "davido" "choser" "kelly" "yester")
groupLGT=("vincent" "tajer" "eille" "edwin" "dewey" "qadani" "willy" "dexter" "jasmin" "robert" "tania" "yummer" "damber" "owner" "siniker")
groupSKT=("edgar" "harper" "devan" "kori" "dana" "genevi" "xandra" "dante" "ximena" "lavina" "vister" "snower" "david" "shiniper" "nower" "kimber" "jini")

# Start Adding groups
groupadd -f -g 1000 kt
groupadd -f -g 1001 skt
groupadd -f -g 1002 lgt


# Start adding users to groups
for i in "${groupKT[@]}"; do
  gpasswd -a kt "${i}"
done

for i in "${groupSKT[@]}"; do
  gpasswd -a skt "${i}"
done

for i in "${groupLGT[@]}"; do
  gpasswd -a lgt "${i}"
done