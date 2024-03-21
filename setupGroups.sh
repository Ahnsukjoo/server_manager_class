#!/bin/bash

# Warning: This script is not tested

groupKT=("boser" "haper" "janela" "caley" "qimat" "linda" "timber" "adel" "julia" "miller" "ringo" "sabrina" "dale" "ouker" "surer" "davido" "choser" "kelly" "yester")
groupLGT=("vincent" "tajer" "eille" "edwin" "dewey" "qadani" "willy" "dexter" "jasmin" "robert" "tania" "yummer" "damber" "owner" "siniker")
groupSKT=("edgar" "harper" "devan" "kori" "dana" "genevi" "xandra" "dante" "ximena" "lavina" "vister" "snower" "david" "shiniper" "nower" "kimber" "jini")

# Start Adding groups
groupadd -f -g 1000 kt
groupadd -f -g 1001 skt
groupadd -f -g 1002 lgt

# Add users to respective primary group
for user in "${groupKT[@]}"; do
  gpasswd -a "$user" kt
  usermod -g kt "$user"
done

for user in "${groupLGT[@]}"; do
  gpasswd -a "$user" lgt
  usermod -g lgt "$user"
done

for user in "${groupSKT[@]}"; do
  gpasswd -a "$user" skt
  usermod -g skt "$user"
done
