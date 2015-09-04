# paths to Ada compilers

SPARK_VERSION="spark-gpl-2015-x86_64-linux"
SPARK_PATH="/usr/local/${SPARK_VERSION}-bin/bin"

GNAT_VERSION="gnat-gpl-2015-x86_64-linux"
GNAT_PATH="/usr/local/${GNAT_VERSION}-bin/bin"

export PATH=$GNAT_PATH:$SPARK_PATH:$PATH


