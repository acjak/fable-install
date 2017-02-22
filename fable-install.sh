#!/bin/sh

url=https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh
curl $url -o miniconda.sh
chmod +x miniconda.sh
./miniconda.sh -b
echo 'export PATH=$HOME/miniconda2/bin:$PATH' >> ~/.bashrc
conda update --yes conda
conda config --add channels http://conda.binstar.org/fable
conda install 3dxrd-scripts

echo ""
echo ""
echo "Fable installation complete."
echo ""
