#!/bin/bash
export JDKBIN=/usr/lib/jvm/java-8-openjdk-amd64/bin
export JAVA=$JDKBIN/java
export CLASSPATH="-classpath lib/testng-remote.jar:lib/org.testng_7.4.0.r202105021533.jar:lib/com.beust.jcommander_1.78.0.jar:lib/org.webjars.jquery_3.5.1.jar:bin"
$JAVA -Dfile.encoding=UTF-8 $CLASSPATH org.testng.TestNG  -d test-output testng.xml


