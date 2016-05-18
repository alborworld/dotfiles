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
        ;;
esac

export WORKSPACE_MYWORLD="$HOME/workspace_myworld"
export WORKSPACE_TDP="$HOME/workspace_tdp"

# OpenSSL
export OpenSSL_HOME=/usr/local/ssl

# Source private aws env variables 
if [ -e "$HOME/.aws/envvars.sh" ]; then
        source $HOME/.aws/envvars.sh
fi

export JDK_HOME=$JAVA_HOME
export PATH="$PATH:${JAVA_HOME}/bin:${OpenSSL_HOME}/bin:$HOME/bin"
