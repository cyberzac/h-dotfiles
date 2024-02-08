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

java19() {
    set_java jdk-19.0.1.jdk
}

java20() {
    set_java jdk-20.0.2.jdk
}

java21() {
    set_java jdk-21.jdk
}

graalvm() {
    set_java  graalvm-jdk-21+35.1
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
