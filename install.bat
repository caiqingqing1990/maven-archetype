@echo off
setlocal EnableDelayedExpansion
ECHO.
COLOR 0a
ECHO. ˵ ��
ECHO --------------------------------------------------------------------
ECHO @Copyright 2013 Create By Hongbin.Yuan QQ:342398690 ���ڣ�2015-10-12 22:59:00
ECHO.
ECHO ��Ҫ��ֱ��˫�����ļ����ɽ��а�װ


ECHO ���� framework-init ��Ŀ�Ǽ�
cd framework-init
SET COMMAND=mvn -X clean
CALL %COMMAND%
SET COMMAND=mvn -X archetype:create-from-project
CALL %COMMAND%
cd target/generated-sources/archetype
SET COMMAND=mvn -X clean
CALL %COMMAND%
SET COMMAND=mvn -X install
CALL %COMMAND%
cd ../../../../
ECHO ������Ŀ
SET COMMAND=mvn -X clean
CALL %COMMAND%



:_exit
pause
