set -ex

outdir=$(pwd)
echo -e "${outdir}"

#install dir
cd ${outdir}/../install
rm -rf *
mkdir bin lib inc src

#build
cd ${outdir}/..
if [ -d build ]; then
    echo "build already existed"
else
    mkdir build
fi
cd ${outdir}/../build
pwd
rm -rf *
cmake -G "Unix Makefiles" ..
make -j 8
make install