#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#+e::
;~ Process,close,explorer.exe
;~ sleep, 5000 ;This sleep 5000 is to let you see what actually happens. Decrease it later
;~ run, explorer.exe
;~ WinWait, ahk_class CabinetWClass
;~ WinClose ;close the new explorer window
run, taskkill /f /im explorer.exe
sleep,200
run, explorer.exe

return