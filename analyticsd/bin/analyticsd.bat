@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  analyticsd startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

@rem Add default JVM options here. You can also use JAVA_OPTS and ANALYTICSD_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windowz variants

if not "%OS%" == "Windows_NT" goto win9xME_args
if "%@eval[2+2]" == "4" goto 4NT_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*
goto execute

:4NT_args
@rem Get arguments from the 4NT Shell from JP Software
set CMD_LINE_ARGS=%$

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\analyticsd-1.0-820-g4a742ca.jar;%APP_HOME%\lib\common-1.0-820-g4a742ca.jar;%APP_HOME%\lib\spring-oxm-4.2.5.RELEASE.jar;%APP_HOME%\lib\spring-web-4.2.5.RELEASE.jar;%APP_HOME%\lib\jackson-databind-2.7.2.jar;%APP_HOME%\lib\httpclient-4.5.2.jar;%APP_HOME%\lib\commons-cli-1.3.1.jar;%APP_HOME%\lib\slf4j-api-1.7.14.jar;%APP_HOME%\lib\jcl-over-slf4j-1.7.14.jar;%APP_HOME%\lib\log4j-core-2.5.jar;%APP_HOME%\lib\log4j-api-2.5.jar;%APP_HOME%\lib\log4j-slf4j-impl-2.5.jar;%APP_HOME%\lib\javax.servlet-api-3.1.0.jar;%APP_HOME%\lib\spring-data-mongodb-1.8.4.RELEASE.jar;%APP_HOME%\lib\spring-webmvc-4.2.5.RELEASE.jar;%APP_HOME%\lib\hibernate-jpa-2.1-api-1.0.0.Final.jar;%APP_HOME%\lib\hibernate-entitymanager-5.0.7.Final.jar;%APP_HOME%\lib\jsp-api-2.0.jar;%APP_HOME%\lib\spring-beans-4.2.5.RELEASE.jar;%APP_HOME%\lib\spring-core-4.2.5.RELEASE.jar;%APP_HOME%\lib\spring-aop-4.2.5.RELEASE.jar;%APP_HOME%\lib\spring-context-4.2.5.RELEASE.jar;%APP_HOME%\lib\jackson-annotations-2.7.2.jar;%APP_HOME%\lib\jackson-core-2.7.2.jar;%APP_HOME%\lib\httpcore-4.4.4.jar;%APP_HOME%\lib\commons-codec-1.9.jar;%APP_HOME%\lib\spring-tx-4.2.5.RELEASE.jar;%APP_HOME%\lib\spring-expression-4.2.5.RELEASE.jar;%APP_HOME%\lib\spring-data-commons-1.11.4.RELEASE.jar;%APP_HOME%\lib\mongo-java-driver-3.2.1.jar;%APP_HOME%\lib\jboss-logging-3.3.0.Final.jar;%APP_HOME%\lib\hibernate-core-5.0.7.Final.jar;%APP_HOME%\lib\dom4j-1.6.1.jar;%APP_HOME%\lib\hibernate-commons-annotations-5.0.1.Final.jar;%APP_HOME%\lib\javassist-3.18.1-GA.jar;%APP_HOME%\lib\geronimo-jta_1.1_spec-1.1.1.jar;%APP_HOME%\lib\servlet-api-2.4.jar;%APP_HOME%\lib\aopalliance-1.0.jar;%APP_HOME%\lib\antlr-2.7.7.jar;%APP_HOME%\lib\jandex-2.0.0.Final.jar;%APP_HOME%\lib\xml-apis-1.0.b2.jar

@rem Execute analyticsd
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %ANALYTICSD_OPTS%  -classpath "%CLASSPATH%" com.projectvision.healthapp.analyticsd.Main %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable ANALYTICSD_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%ANALYTICSD_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
