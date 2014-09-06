#!/bin/bash
DIR=${TRAVIS_BUILD_DIR}
BRANCH=develop
git clone https://github.com/samtools/htslib.git ${DIR}/htslib
cd ${DIR}/htslib
git checkout $BRANCH
make
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$(pwd)
export C_INCLUDE_PATH=$C_INCLUDE_PATH:$(pwd)
sudo ldconfig
