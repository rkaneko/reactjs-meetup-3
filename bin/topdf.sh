#!/bin/bash

set -e

__DIR=`dirname $0`
cd ${__DIR}/..

cat <<__EOT__
pwd: `pwd`
__EOT__

SLIDE_WEB_PAGE=

if [ -z "${SLIDE_WEB_PAGE}" ]; then
    echo Pls set SLIDE_WEB_PAGE.
    exit 1
fi

wkhtmltopdf --page-width 111 --page-height 148 -B 0 -L 0 -R 0 -T 0 -O "Landscape" ${SLIDE_WEB_PAGE} slide.pdf
