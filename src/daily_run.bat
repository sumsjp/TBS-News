REM @echo off

REM �۰ʤ����� bat �ɮצۨ��Ҧb���ؿ�
cd /d "%~dp0"

REM �Ұʵ�������
call ..\Scripts\activate.bat

REM ���� Python �}��
git pull
python update_youtube.py
git add ..
git commit -am update
git push

REM ���ε������ҡ]�i��^
call ..\Scripts\deactivate.bat
