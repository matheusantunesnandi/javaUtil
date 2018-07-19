@ECHO off

SET pasta="C:\Another Program Files\Java\jdk-9.0.1\\"

@ECHO Definindo as variáveis de ambiente JAVA 9 em %pasta%.

SET V_JAVA_HOME=%%JAVA_HOME%%

REG add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\Environment" /v JAVA_HOME /f /d %pasta%

REG add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\Environment" /v CLASSPATH /f /d ";%V_JAVA_HOME%\lib;%V_JAVA_HOME%\lib\tools.jar;%V_JAVA_HOME%\lib\dt.jar;%V_JAVA_HOME%\lib\htmlconverter.jar;%V_JAVA_HOME%\jre\lib;%V_JAVA_HOME%\jre\lib\rt.jar;%V_JAVA_HOME%\bin\javaw.exe;"

REG add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\Environment" /v Path /f /d "%Path%;%V_JAVA_HOME%\bin\\"

PAUSE

REM Feito por: Matheus Antunes Nandi
