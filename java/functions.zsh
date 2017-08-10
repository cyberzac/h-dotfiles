#
#  Switch java version

java6 () {
    set_java 1.6.0_45-b06-451
}

java7 () {
    set_java jdk1.7.0_79
}

java8 () {           
    set_java jdk1.8.0_131
}

java9 () {           
    set_java jdk-9
}

set_java () {
    if [ "$JAVA_HOME" ]; then
        pathremove $JAVA_HOME/bin
    fi
    export JAVA_HOME=/Library/Java/JavaVirtualMachines/$1.jdk/Contents/Home
    pathprepend $JAVA_HOME/bin
}
