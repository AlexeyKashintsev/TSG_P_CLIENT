@rem Main section. Don't change

@git pull

@set CURRENT_DIR=%~dp0..

@set MAIN_CLASS_JAR="%CURRENT_DIR%/bin/Application.jar"
@set MAIN_CLASS=com.eas.client.application.PlatypusClientApplication

@rem LaF section. Change look and feel if you want
@set EXT_CLASSES="%CURRENT_DIR%/ext/*";
@set LAF_CLASS=com.jtattoo.plaf.fast.FastLookAndFeel

@set DB_NAME=TSG
@set DB_URL=jdbc:postgresql://tsg.4rp.org:5432/TSG 
@set DB_USER=tsg_main
@set DB_PASSWORD=tsgpswd
@set DB_SCHEMA=tsg_main
@set DB_DEF_DS=TSG"
@set APP_PATH="jndi://TSG"
@set APP_ELEMENT="main_form"

@start javaw -cp %MAIN_CLASS_JAR%;%EXT_CLASSES% %MAIN_CLASS% -appelement %APP_ELEMENT% -datasource %DB_NAME% -dburl %DB_URL% -dbuser %DB_USER% -dbpassword %DB_PASSWORD% -dbschema %DB_SCHEMA% -default-datasource %DB_DEF_DS% -url %APP_PATH% %1 %2
