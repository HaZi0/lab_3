@echo off
mkdir F:\Work\Lab\Group\PIP\CMD\Hide_folder
attrib +h F:\Work\Lab\Group\PIP\CMD\Hide_folder
mkdir F:\Work\Lab\Group\PIP\CMD\Open_folder
xcopy /? > F:\Work\Lab\Group\PIP\CMD\Open_folder\copyhelp.txt
xcopy F:\Work\Lab\Group\PIP\CMD\Open_folder\copyhelp.txt F:\Work\Lab\Group\PIP\CMD\Hide_folder\copied_copyhelp.txt
pause