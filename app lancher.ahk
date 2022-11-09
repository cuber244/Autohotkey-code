#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

/*
###省略記号###

Shift => +
Ctrl => ^
Alt => !
Windows => #

*/ 

!:: Run, "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Send Anywhere.lnk"
!2:: Run, "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Everything.lnk"
vk1d & z:: Run, "C:\Users\nisi0\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Vivaldi.lnk"