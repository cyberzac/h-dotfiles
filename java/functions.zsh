#
#  Switch java version

java8() {           
    set_java jdk1.8.0_211
}

openjdk8() {           
    set_java adoptopenjdk-8
}

java11() {           
    set_java jdk-11.0.4
}

java12() {
    set_java jdk-12.0.1
}

graalvm8() {
    set_java  graalvm-ee-19.0.0
}

set_java () {
    if [ "$JAVA_HOME" ]; then
        pathremove $JAVA_HOME/bin
    fi
    export JAVA_HOME=/Library/Java/JavaVirtualMachines/$1.jdk/Contents/Home
    pathprepend $JAVA_HOME/bin
}

# Default to java8
java11


