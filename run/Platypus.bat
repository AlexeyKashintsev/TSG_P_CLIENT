@rem Main section. Don't change

git pull

@set CURRENT_DIR=%~dp0..

@set MAIN_CLASS_JAR="%CURRENT_DIR%/bin/Application.jar"
@set MAIN_CLASS=com.eas.client.application.PlatypusClientApplication

@rem LaF section. Change look and feel if you want
@set EXT_CLASSES="%CURRENT_DIR%/ext/*";
@set LAF_CLASS=com.jtattoo.plaf.fast.FastLookAndFeel

@set DB_PROPERTIES="-datasource TSG -dburl jdbc:postgresql://tsg.4rp.org:5432/TSG -dbuser tsg_main -dbpassword tsgpswd -dbschema tsg_main -default-datasource TSG"
@set APP_PATH="-url jndi://TSG"
@set APP_ELEMENT="-appelement main_form"

@java -cp %MAIN_CLASS_JAR%;%EXT_CLASSES% %MAIN_CLASS% %APP_ELEMENT% %DB_PROPERTIES% %APP_PATH% %1 %2
