#
#  Switch java version

java8 () {           
    set_java jdk1.8.0_181
}

java10() {           
    set_java jdk-10.0.2
}

java11() {           
    set_java jdk-11
}

set_java () {
    if [ "$JAVA_HOME" ]; then
        pathremove $JAVA_HOME/bin
    fi
    export JAVA_HOME=/Library/Java/JavaVirtualMachines/$1.jdk/Contents/Home
    pathprepend $JAVA_HOME/bin
}
