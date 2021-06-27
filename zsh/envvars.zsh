# System-specific
os=`uname -s`

case $os in
    "Darwin" )
        export PYTHONPATH=".:/usr/local/lib/python/site-packages"
        ;;
esac

export EDITOR='vim'

# OpenSSL
export OpenSSL_HOME=/usr/local/ssl

export PATH="$PATH:${OpenSSL_HOME}/bin:$HOME/bin"
