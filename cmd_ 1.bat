@echo off
mkdir F:\Work\Lab\Group\PIP\Batch\Hide_folder
attrib +h F:\Work\Lab\Group\PIP\Batch\Hide_folder
mkdir F:\Work\Lab\Group\PIP\Batch\Open_folder
xcopy /? > F:\Work\Lab\Group\PIP\Batch\Open_folder\copyhelp.txt
xcopy F:\Work\Lab\Group\PIP\Batch\Open_folder\copyhelp.txt F:\Work\Lab\Group\PIP\Batch\Hide_folder\copied_copyhelp.txt
pause
