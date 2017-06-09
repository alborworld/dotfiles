# System-specific
os=`uname -s`

case $os in
    "Darwin" )
        export JAVA_HOME=/Library/Java/JavaVirtualMachines/latest/Contents/Home/
        export PYTHONPATH=".:/usr/local/lib/python/site-packages"
        ;;
    "Linux"  )
        export JAVA_HOME=/usr/lib/jvm/latest/
        #export MAVEN_OPTS="-Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,address=4000,server=y,suspend=n"
        export EC2_AMITOOL_HOME=/usr/local/ec2/ec2-ami-tools-1.5.7
        export PATH="$PATH:$EC2_AMITOOL_HOME/bin"
        export PATH="$PATH:$HOME/apps/packer"
        export WIN_HOME="/mnt/c/Users/albi"
        ;;
esac

export WORKSPACE_TDP="$HOME/workspace_tdp"
export EDITOR='vim'

# OpenSSL
export OpenSSL_HOME=/usr/local/ssl

export JDK_HOME=$JAVA_HOME
export PATH="$PATH:${JAVA_HOME}/bin:${OpenSSL_HOME}/bin:$HOME/bin"
