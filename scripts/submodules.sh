#!/bin/bash
SCRIPT_ROOT=`dirname "$0"`
SCRIPT_ROOT=`( cd "$SCRIPT_ROOT" && pwd )`
SRC_ROOT=${SCRIPT_ROOT}/..
GHOST_DIR=${SRC_ROOT}/blog/ghost
THEME=ghostium
GHOSTIUM_DIR=${SRC_ROOT}/blog/${THEME}
CUR_GHOST_VER=0.3.3

### Get the stable ghost version
echo "cd ${GHOST_DIR} && git checkout ${CUR_GHOST_VER}"

### copy ghostium from the submodule dir, to the 
### themes dir
echo cp -pr ${GHOSTIUM_DIR} ${GHOST_DIR}/content/themes

function clean() {
   echo rm -fr ${GHOST_DIR}/content/themes/${THEME}
}
