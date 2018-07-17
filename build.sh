#!/bin/sh

BINVERSION="0.1.0"
#archs=( "linux.amd64")
archs=( "linux.amd64" "linux.386" "darwin.amd64" "darwin.386" )

rm -rf bin
mkdir bin
for i in "${archs[@]}"
do
binurl="https://github.com/ysaakpr/helmez-bin/releases/download/${BINVERSION}/helmez-bin.${i}"
echo building ${i}, with bin version ${BINVERSION}
echo url : ${binurl}
cd helmez
rm helmez-bin

curl -L -o helmez-bin ${binurl}
tar -zcvf ../bin/helmez-${i}.tar.gz .
cd ../
done 