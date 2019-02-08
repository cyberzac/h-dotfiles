#
#  Switch java version

java8 () {           
    set_java jdk1.8.0_201
}

java11() {           
    set_java jdk-11.0.2
}

set_java () {
    if [ "$JAVA_HOME" ]; then
        pathremove $JAVA_HOME/bin
    fi
    export JAVA_HOME=/Library/Java/JavaVirtualMachines/$1.jdk/Contents/Home
    pathprepend $JAVA_HOME/bin
}
