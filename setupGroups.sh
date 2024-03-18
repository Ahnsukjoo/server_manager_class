#!/bin/bash

# Warning: This script is not tested

groupKT=("boser" "haper" "janela" "caley" "qimat" "linda" "timber" "adel" "julia" "miller" "ringo" "sabrina" "dale" "ouker" "surer" "davido" "choser" "kelly" "yester")
groupLGT=("vincent" "tajer" "eille" "edwin" "dewey" "qadani" "willy" "dexter" "jasmin" "robert" "tania" "yummer" "damber" "owner" "siniker")
groupSKT=("edgar" "harper" "devan" "kori" "dana" "genevi" "xandra" "dante" "ximena" "lavina" "vister" "snower" "david" "shiniper" "nower" "kimber" "jini")

# Start Adding group name KT
groupadd -g 1000 kt
for i in "${groupKT[@]}"; do
  adduser -g kt "${i}"
done

# Start Adding group name SKT
groupadd -g 1001 skt
for i in "${groupSKT[@]}"; do
  adduser -g skt "${i}"
done

# Start Adding group name LGT
groupadd -g 1002 lgt
for i in "${groupLGT[@]}"; do
  adduser -g lgt "${i}"
done