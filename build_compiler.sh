#!/bin/bash
echo "geting the compiler"

# TODO: wget compiler suite

echo "Unpaking..."

SRC_PKGS=$(pwd)/src_pkg
MACHINE="-m32"
HOST_ROOT=$(pwd)/host_root
HOST_USR="$HOST_ROOT/usr"

# mkdir -p "$SRC_PKGS"
# tar -C "$SRC_PKGS" -xf codesourcery-master-arm-2010q1-188-arm-none-eabi.tar.gz


mkdir -p "$HOST_ROOT"
mkdir -p "$HOST_USR"



# (cd "$SRC_PKGS";
# echo "Unpaking zlib";
# tar -xf zlib-2010q1-188.tar.bz2; 
# cd zlib-1.2.3;
# ./configure --prefix="$HOST_USR";
# make CFLAGS="-m32" -j4;
# make install
# )

# (cd "$SRC_PKGS";
# echo "Unpaking gmp";
# ls;
# # tar -xf gmp-2010q1-188.tar.bz2; 
# cd gmp-2010q1;
# export CFLAGS="-m32"
# export CXXLAGS="-m32"
# ./configure CC="gcc -m32   -fpermissive" CXX="g++ -m32 -fpermissive" --host=i686-pc-linux-gnu --prefix="$HOST_USR" --disable-shared --enable-cxx --disable-nls
# make clean
# make CFLAGS="-m32 -g -O2" CXXFLAGS="-m32 -g -O2" -j4;
# make CFLAGS="-m32 -g -O2" CXXFLAGS="-m32 -g -O2" install
# # make CFLAGS="-m32 -g -O2" check
# )

# (cd "$SRC_PKGS";
# echo "Unpaking mpfr";
# ls;
# tar -xf mpfr-2010q1-188.tar.bz2; 
# cd mpfr-2010q1;
# export CFLAGS="-m32"
# export CXXLAGS="-m32"
# # ./configure --build=i686-pc-linux-gnu --target=arm-none-eabi --prefix="$HOST_USR" --disable-shared --host=i686-pc-linux-gnu --disable-nls --with-gmp="$HOST_USR"
# make clean
# make CFLAGS="-m32 -g -O2" CXXFLAGS="-m32 -g -O2" -j4;
# make CFLAGS="-m32 -g -O2" CXXFLAGS="-m32 -g -O2" install
# make CFLAGS="-m32 -g -O2" check
# )


(cd "$SRC_PKGS";
echo "Unpaking gmp";
ls;
# tar -xf ppl-2010q1-188.tar.bz2; 
cd ppl-0.10.2;
export CFLAGS="-m32"
# ./configure CC="gcc -m32   -fpermissive" CXX="g++ -m32 -fpermissive" --build=i686-pc-linux-gnu --target=arm-none-eabi --prefix="$HOST_USR" --disable-shared --host=i686-pc-linux-gnu --disable-nls --with-libgmp-prefix="$HOST_USR"
# make clean
make CFLAGS="-m32 -g -O2  -fpermissive" -j4;
make CFLAGS="-m32 -g -O2   -fpermissive" install
)



