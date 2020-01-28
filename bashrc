# TODO Add the following keyboard xmodmaps
# Disable capslock
# Function keys with capslock modifier
# Page Up/Down, Home/End, Arrow Keys with capslock modifier

# TODO: Move oracle stuff to separate config
export HTTP_PROXY=http://www-proxy-hqdc.us.oracle.com:80
export http_proxy=http://www-proxy-hqdc.us.oracle.com:80
export HTTPS_PROXY=http://www-proxy-hqdc.us.oracle.com:80
export https_proxy=http://www-proxy-hqdc.us.oracle.com:80
export no_proxy=localhost,127.0.0.1,.us.oracle.com,.oraclecorp.com


alias load_yubi="ssh-add -s /usr/lib/pkcs11/opensc-pkcs11.so"
alias clear_yubi="ssh-add -e /usr/lib/pkcs11/opensc-pkcs11.so"
alias reyubi="clear_yubi && load_yubi && ssh-add -L"
alias ocna="sudo ~/projects/personal-bitbucket/connect-ocna/ocnaconnect.sh"
alias fakepython="export PATH=/home/user/fakepython:$PATH"

