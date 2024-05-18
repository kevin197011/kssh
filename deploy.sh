# Copyright (c) 2024 Kk
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

deploy::install() {
    git clone https://github.com/kevin197011/kssh.git ~/.kssh
    chmod +x ~/.kssh/bin/kssh
}

deploy::config() {
    # mac
    command -v brew >/dev/null && (grep -q "~/.kssh/bin" ~/.zshrc || echo "export PATH=\$PATH:~/.kssh/bin" >>~/.zshrc)
    # ubuntu
    [[ -f /etc/lsb-release ]] && grep -qi "ubuntu" /etc/lsb-release &&
        apt-get update >/dev/null &&
        curl -fsSL https://raw.githubusercontent.com/kevin197011/krun/main/deploy.sh | bash &&
        krun install-asdf.sh &&
        krun install-ruby.sh &&
        grep -q "~/.kssh/bin" ~/.bashrc || echo "export PATH=\$PATH:~/.kssh/bin" >>~/.bashrc
}

deploy::main() {
    deploy::install
    deploy::config
}

# run main
deploy::main "$@"
