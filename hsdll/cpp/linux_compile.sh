#!/bin/bash
GHC_PATH=/opt/ghc/7.8.4-d69/lib/ghc-7.8.4
g++ -std=gnu++11 -fpermissive main.cpp \
-I$GHC_PATH/include \
-L$GHC_PATH/bytestring-0.10.4.0 \
-L$GHC_PATH/ghc-prim-0.3.1.0 \
-L$GHC_PATH/integer-gmp-0.5.1.0 \
-L$GHC_PATH/base-4.7.0.2 \
-L$GHC_PATH/rts-1.0 \
-L../hs/dist/build \
-lHSpunktor-0.1.0.0 \
-lHSbytestring-0.10.4.0 \
-lpthread \
-lHSrts_thr \
-lHSbase-4.7.0.2 \
-lHSinteger-gmp-0.5.1.0 \
-lHSghc-prim-0.3.1.0 \
-lrt \
-ldl \
-lgmp \
-lCffi \




