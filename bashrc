export ALTERNATE_EDITOR=""
export EDITOR="emacsclient -t"                  # $EDITOR opens in terminal
export VISUAL="emacsclient -c -a emacs"         # $VISUAL opens in GUI mode

# Shortcuts for the lazy
alias fakepython="export PATH=/home/user/fakepython:$PATH"
alias jtags="rm -f tags && ctags --languages=java -e -R ."
alias atags="rm -f tags && atags -e -R ."
alias cctags="rm -f tags && ctags --languages=c -e -R ."

if [ "$HOSTNAME" = "waltherson" ]
then
   export HTTP_PROXY=http://www-proxy-hqdc.us.oracle.com:80
   export http_proxy=http://www-proxy-hqdc.us.oracle.com:80
   export HTTPS_PROXY=http://www-proxy-hqdc.us.oracle.com:80
   export https_proxy=http://www-proxy-hqdc.us.oracle.com:80
   export no_proxy=localhost,127.0.0.1,.us.oracle.com,.oraclecorp.com

   alias load_yubi="ssh-add -s /usr/lib/pkcs11/opensc-pkcs11.so"
   alias clear_yubi="ssh-add -e /usr/lib/pkcs11/opensc-pkcs11.so"
   alias reyubi="clear_yubi && load_yubi && ssh-add -L"
   alias ocna="sudo ~/projects/personal-bitbucket/connect-ocna/ocnaconnect.sh"
   alias parfaitmvn="mvn clean && mvn oracle.parfait:parfait-maven-plugin:3.1.0:aggregate-translate oracle.parfait:parfait-maven-plugin:3.1.0:aggregate-analyze -DskipTests"
fi