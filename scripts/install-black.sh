#!/bin/bash
# install python-lsp-black
set -e

DATA_DIR="${XDG_DATA_HOME:-${HOME}/.local/share}/vim-lsp-settings"
PYLSP_DIR="${DATA_DIR}/servers/pylsp-all"
if [[ ! -d "$PYLSP_DIR" ]]; then
    echo "pylsp-all not installed in: $PYLSP_DIR"
    exit 1
fi

${PYLSP_DIR}/venv/bin/pip3 install -U pip && \
${PYLSP_DIR}/venv/bin/pip3 install -U python-lsp-black
