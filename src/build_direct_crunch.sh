#!/bin/bash -e

BIN=crunch_server
MIR_RUN=$(which mir-run)

mir-crunch -name "static" ../files > filesystem_static.ml
mir-crunch -name "templates" ../tmpl > filesystem_templates.ml
mir-build unix-direct/${BIN}.bin
sudo ${MIR_RUN} -b unix-direct ./_build/unix-direct/${BIN}.bin
