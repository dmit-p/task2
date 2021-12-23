#!/bin/bash

mkdir -p bin

export JDKBIN=/usr/lib/jvm/java-8-openjdk-amd64/bin
export JAVAC=$JDKBIN/javac
export JAR=$JDKBIN/jar

export CLASSPATH="-classpath lib/org.testng_7.4.0.r202105021533.jar"
export SRCFILES="src/task2/annotation/Priority.java src/task2/annotation/TestMethodInfo.java"
$JAVAC $CLASSPATH -d bin $SRCFILES

cd bin
export FILES="task2/annotation/Priority.class task2/annotation/TestMethodInfo.class" 
$JAR cf ../lib/task2.annotation.test_method_info.jar $FILES
cd ../

export CLASSPATH="-classpath lib/org.testng_7.4.0.r202105021533.jar:lib/task2.annotation.test_method_info.jar"
export SRCFILES="src/task2/listener/ListenerTest.java"
$JAVAC $CLASSPATH -d bin $SRCFILES

mkdir -p bin/META-INF/services
echo task2.listener.ListenerTest > bin/META-INF/services/org.testng.ITestNGListener

cd bin
export FILES="task2/listener/ListenerTest.class META-INF/services/org.testng.ITestNGListener"
$JAR cf ../lib/task2.listener.listener_test.jar $FILES
cd ../

export CLASSPATH="-classpath lib/org.testng_7.4.0.r202105021533.jar:lib/task2.annotation.test_method_info.jar:lib/task2.listener.listener_test.jar"
$JAVAC $CLASSPATH -d bin src/task2/Task2Test.java



