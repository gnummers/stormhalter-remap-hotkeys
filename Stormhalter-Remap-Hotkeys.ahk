;Simple AutoHotkey script to Remap Hotkeys in Stormhalter.

#NoEnv
#Persistent
#SingleInstance force
#IfWinActive ahk_exe Kesmai.Client.exe

; Please see: https://www.autohotkey.com/docs/misc/Remap.htm
; And also: https://www.autohotkey.com/docs/KeyList.htm (List of names of Keyboard Keys, Mouse Buttons, etc.)
; Remapping below. Binding side mouse buttons (Mouse4 and Mouse5 to '*' and '/' on numpad).
XButton2::NumpadMult
XButton1::NumpadDiv

;Below remaps the Creature List from ALT+L to ALT+D.
!d::!l 

; Below allows us to use middle mouse button as a double-click action universally in Stormhalter,
; for movement, jumpkicks, warming spells, rolling corpses, etc.
MButton::
    Send, {LButton down}
    Sleep 10
    Send, {LButton up}
    Send, {LButton down}
    Sleep 10
    Send, {LButton up}
return
