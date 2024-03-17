#!/bin/bash

names=("boser" "edgar" "yarano" "vincent" "trevo" "haper" "janela" "ellie" "harper" "wilson" "edwin" "dewey" "devan" "caley" "kori" "qadani" "willy" "qimat" "dexter" "linda" "dana" "jasmin" "genevi" "noner" "adel" "robert" "xandra" "dante" "julia" "ximena" "tania" "miller" "ringo" "lavina" "yummer" "visiter" "dale" "damber" "snower" "david" "shimber" "ouker" "surer" "nower" "davido" "owner" "kimber" "jini" "choser" "kelly" "yester" "siniker", "sabrina")
myname="sabrina"
PASS="wjsansrk"

for i in "${names[@]}"; do
  if [$i == $myname]; then
    continue
  fi
  adduser $i
  echo "$PASS" | passwd "$i" --stdin
done
