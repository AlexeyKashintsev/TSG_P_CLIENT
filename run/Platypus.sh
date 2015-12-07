#!/bin/sh
JRE_PATH=java
PLATYPUS_HOME=".."
MAIN_CLASS_JAR=$PLATYPUS_HOME/bin/Application.jar
MAIN_CLASS=com.eas.client.application.PlatypusClientApplication
EXT_CLASSES=$PLATYPUS_HOME/ext/*
LAF_CLASS=com.jtattoo.plaf.fast.FastLookAndFeel
DB_PROPERTIES="-datasource TSG -dburl jdbc:postgresql://tsg.4rp.org:5432/TSG -dbuser tsg_main -dbpassword tsgpswd -dbschema tsg_main -default-datasource TSG"
APP_PATH="-url jndi://TSG"
APP_ELEMENT="-appelement main_form"
$JRE_PATH -cp $MAIN_CLASS_JAR:$EXT_CLASSES $MAIN_CLASS $APP_ELEMENT $DB_PROPERTIES $APP_PATH -user nadB -password masterkey $1 $2
