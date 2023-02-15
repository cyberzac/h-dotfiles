#
#  Switch java version

java8() {           
    set_java jdk1.8.0_321.jdk
}

java11() {
    set_java jdk-11.0.14.jdk
}

java17() {
    set_java jdk-17.0.2.jdk
}

graalvm() {
    set_java  graalvm-ee-java19-22.3.0
}

set_java () {
    if [ "$JAVA_HOME" ]; then
        pathremove $JAVA_HOME/bin
    fi
    export JAVA_HOME=/Library/Java/JavaVirtualMachines/$1/Contents/Home
    pathprepend $JAVA_HOME/bin
}

# Default
graalvm
