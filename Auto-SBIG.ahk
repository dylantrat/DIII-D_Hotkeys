#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^!n::

InputBox, Exposure
tempor := Exposure
SetFormat, float, 10.0

Run, Ccdops.exe, C:\Program Files (x86)\SBIG\CCDOps5

sleep 10000

loop, 6
{
Send ^g
loop, 5
{
Send {TAB}
}
Send {Enter}
sleep 5000
Send ^s
sleep 2000
Send !s
Send {TAB}
Send {Enter}
}
