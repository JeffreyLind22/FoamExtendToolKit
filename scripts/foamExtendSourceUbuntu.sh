#!/bin/bash

cd ~

mkdir foam

cd foam

git clone git://git.code.sf.net/p/foam-extend/foam-extend-5.0 foam-extend-5.0

sudo apt update

sudo apt upgrade

sudo apt install git binutils-dev cmake flex zlib1g-dev libncurses5-dev curl bison libxt-dev rpm mercurial graphviz openmpi-bin libopenmpi-dev build-essential linux-generic libmpich-dev libopenmpi-dev metis libmetis-dev libparmetis-dev scotch libscotch-dev python3 python3-dev python-is-python3 python3-setuptools

cd foam-extend-5.0

sed -i -e 's=rpmbuild --define=rpmbuild --define "_build_id_links none" --define=' ThirdParty/tools/makeThirdPartyFunctionsForRPM

. etc/bashrc

./Allwmake.firstInstall -j -l -s

mkdir -p $FOAM_RUN

echo "alias fe50='source \$HOME/foam/foam-extend-5.0/etc/bashrc'" >> $HOME/.bashrc

. ~/.bashrc