
@rem author by yanyi beyondyanyi@gmail.com
color 0f

rem �����ļ���·��(�������޸�)
set location=F:\mysql_backup\
rem ���ݿ��û�����
set username=root
set password=root
rem Ҫ���ݵ����ݿ�

rem �����ļ����·������ǰ���ڣ�
set dist=%location%%date:~0,4%%date:~5,2%%date:~8,2%\
set "dist=%dist: =0%"
rem �����ļ���
set filename=%time:~0,2%-%time:~3,2%-%time:~6,2%
set "filename=%filename: =0%"


rem �ж��ļ����Ƿ����
if exist %dist% {
	echo ����·��Ϊ+%dist%
} else {
	md %dist%
}


rem ����mysqldumpִ�б��ݲ���
::cmms
mysqldump -u%username% -p%password% cmms> %dist%cmms-%filename%.sql
::road
mysqldump -u%username% -p%password% road> %dist%road-%filename%.sql
::weather
mysqldump -u%username% -p%password% weather> %dist%weather-%filename%.sql
echo "���ݳɹ�"
rem ��ʱ1���Զ��ر�
choice /t 1 /d y /n >nul
