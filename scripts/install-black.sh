#!/bin/bash
set -e

if [[ "$XDG_DATA_HOME" != ""  ]]; then
    DATA_DIR="${XDG_DATA_HOME}/vim-lsp-settings"
else
    DATA_DIR="${HOME}/.local/share/vim-lsp-settings"
fi
PYLSP_DIR="${DATA_DIR}/servers/pylsp-all"
if [[ ! -d "$PYLSP_DIR" ]]; then
    echo "pylsp-all not installed in: $PYLSP_DIR"
    exit 1
fi

${PYLSP_DIR}/venv/bin/pip3 install -U pip && \
${PYLSP_DIR}/venv/bin/pip3 install -U python-lsp-black
