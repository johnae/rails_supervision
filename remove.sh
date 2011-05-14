#!/bin/bash

FILEPATH=$(cd "$(dirname "$0")"; pwd)/`basename $0`
if [[ -h $FILEPATH ]]; then
  REALPATH=`readlink $FILEPATH`
else
  REALPATH=$FILEPATH
fi

RUNIT_DIR=$(dirname $REALPATH)
source $RUNIT_DIR/config

if [[ -h $SVDIR/$APP ]]; then
  rm $SVDIR/$APP
fi