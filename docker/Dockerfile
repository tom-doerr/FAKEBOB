from kaldiasr/kaldi

run apt-get update && apt-get install -y  \
python3-pip \
git

run python3 --version

run pip3 install \
numpy==1.15

run pip3 install \
scipy==1.4.0

run pip3 install \
ushlex

run pip3 install \
pytest-shutil

run git clone https://github.com/FAKEBOB-adversarial-attack/FAKEBOB.git
env KALDI_ROOT="/opt/kaldi"
run cp FAKEBOB/gmm-global-est-map.cc $KALDI_ROOT/src/gmmbin/


run mkdir -p /export/corpora
run ln -s /mounted/data/vox1 /export/corpora/VoxCeleb1
run ln -s /mounted/data/vox2 /export/corpora/VoxCeleb2

workdir $KALDI_ROOT
run apt-get update && apt-get install -y  \
libopenblas-dev \
libatlas-base-dev \
cmake
#run mkdir -p build && cd build; \
#cmake -DCMAKE_INSTALL_PREFIX=../dist .. # configure; \
#cmake --build . --target install -- -j8 # build && install, substitude -j8 with /m:8 if you are on Windows

#run apt-get update && apt-get install -y  \
#ninja-build
#run mkdir -p build && cd build; \
#cmake -GNinja -DCMAKE_INSTALL_PREFIX=../dist ..; \
#cmake --build . --target install

workdir $KALDI_ROOT/tools
run apt-get update && apt-get install -y  \
oss-compat \
build-essential \
libdb1-compat
#run echo test
run extras/check_dependencies.sh
#run sleep 300
run make


#run apt-get update && apt-get install -y  \
#qsub

workdir /opt/kaldi/egs/voxceleb/v1

run echo " \
export train_cmd=run.pl; \
export decode_cmd=run.pl; \
export mkgraph_cmd='run.pl'" > cmd.sh



#workdir /opt/kaldi/egs/voxceleb/v1
#run new_file=$(awk '/voxceleb1_root=/{gsub(/"export/corpora/VoxCeleb1"/, "test")};{print}')


#copy ./bashrc /root/.bashrc
#run echo " \
#export KALDI_ROOT=/opt/kaldi # change to your own KAIDI_ROOT; \
#FAKEBOB_PATH=/mounted # change to your FAKEBOB PATH; \
#
#export PATH=$FAKEBOB_PATH/pre-models/utils/:$KALDI_ROOT/tools/openfst/bin:$KALDI_ROOT/tools/sph2pipe_v2.5:$PATH; \
#[ ! -f $KALDI_ROOT/tools/config/common_path.sh ] && echo >&2 "The standard file $KALDI_ROOT/tools/config/common_path.sh is not present -> Exit!" && exit 1; \
#. $KALDI_ROOT/tools/config/common_path.sh; \
#export LC_ALL=C; \
#export train_cmd="run.pl --mem 4G" # run.pl for running kaldi local machine \
#" > /.bashrc




















##############################
#from ubuntu:16.04
#
#run apt-get update && apt-get install -y  \
#python3-pip \
#git
#
#run python3 --version
#
#run pip3 install \
#numpy==1.15
#
#run pip3 install \
#scipy==1.4.0
#
#run pip3 install \
#ushlex
#
#run pip3 install \
#pytest-shutil
#
#run git clone https://github.com/FAKEBOB-adversarial-attack/FAKEBOB.git
#
#env KALDI_ROOT="/kaldi"
#run git clone https://github.com/kaldi-asr/kaldi.git $KALDI_ROOT
#run cp /FAKEBOB/gmm-global-est-map.cc $KALDI_ROOT/src/gmmbin/
#
#
#env makefile_path=$KALDI_ROOT"/src/gmmbin/Makefile"
#run echo $makefile_path
#run ls -la $makefile_path
#run changed_content="$(awk '{gsub("BINFILES = ", "BINFILES = gmm-global-est-map\ \n"); print}' $makefile_path)"; \
#    echo "$changed_content" > $makefile_path \
#    echo ============; \
#    cat $makefile_path
#
#
#
#workdir $KALDI_ROOT/tools
#run bash extras/install_mkl.sh
#run apt-get install -y zlib1g-dev automake autoconf unzip sox gfortran libtool subversion python2.7
#run bash extras/check_dependencies.sh
##run CXX=g++-4.8 bash extras/check_dependencies.sh
#env NUM_CPUS_TO_USE=1
##run make CXX=g++-4.8 -j $NUM_CPUS_TO_USE
#
#run make -j $NUM_CPUS_TO_USE
#
#
#workdir $KALDI_ROOT/src








