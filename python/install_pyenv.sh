#!/bin/bash -i

git clone https://github.com/pyenv/pyenv.git /opt/pyenv

cat >> /etc/bash.bashrc << EOF
export PYENV_ROOT="/opt/pyenv"
export PATH="\${PYENV_ROOT}/bin:\${PATH}"
if command -v pyenv 1>/dev/null 2>&1; then
    eval "\$(pyenv init -)"
fi
EOF

source /etc/bash.bashrc
pyenv install 3.7.5
pyenv global 3.7.5
