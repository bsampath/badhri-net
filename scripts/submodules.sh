SCRIPT_ROOT=`dirname "$0"`
SCRIPT_ROOT=`( cd "$SRC_ROOT" && pwd )`
SRC_ROOT=${SCRIPT_ROOT}/..
GHOST_DIR=${SRC_ROOT}/blog/ghost
CUR_GHOST_VER=0.3.3
cd ${GHOST_DIR} && git checkout ${CUR_GHOST_VER}
