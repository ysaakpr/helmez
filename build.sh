#!/bin/sh

BINVERSION="0.1.0"
#archs=( "linux.amd64")
archs=( "linux.amd64" "linux.386" "darwin.amd64" "darwin.386" )

rm -rf bin
mkdir bin
for i in "${archs[@]}"
do
rm helmez/helmez-bin
binurl="https://github.com/ysaakpr/helmez-bin/releases/download/${BINVERSION}/helmez-bin.${i}"
curl -L -o helmez/helmez-bin ${binurl}
cd helmez
tar -cvf ../bin/helmez-${i}.tar.gz .
cd ../
done 