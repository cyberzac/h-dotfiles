#
#  Switch java version

java8 () {           
    set_java jdk1.8.0_172
}

java9 () {           
    set_java jdk-9.0.4
}

java10() {           
    set_java jdk-10.0.1
}

set_java () {
    if [ "$JAVA_HOME" ]; then
        pathremove $JAVA_HOME/bin
    fi
    export JAVA_HOME=/Library/Java/JavaVirtualMachines/$1.jdk/Contents/Home
    pathprepend $JAVA_HOME/bin
}
