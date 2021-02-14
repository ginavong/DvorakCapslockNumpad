; CapslockNumpad 1.1.0 (2019-12-30)
; Desi Quintans
; https://github.com/DesiQuintans/CapslockNumpad

; An Autohotkey script for Windows that lets you emulate a numeric keypad
; (numpad) on a keyboard that doesn't have it. Both NumLock modes are usable.

; Press Alt + CapsLock to toggle the numpad on and off.
; Press \ (above Enter) to toggle NumLock.

; Dvorak keyboard
; 789  ->  789
; gcr  ->  456
; htn  ->  123
; mwv  ->  0 w .
; 0[]  ->  -*/
; ls -> + enter



; ======================================

#NoEnv
#SingleInstance force
SetWorkingDir %A_ScriptDir%



; - Global vars and other setup ------------------------------

SetNumLockState, On
Suspend, On

numlock_on()
{
    return GetKeyState("NumLock", "T")
}

update_traytip()
{
    tray_text := "CapsLock Numpad`nToggle with Alt + CapsLock"

    if (numlock_on() == true) {
        numlock_state := "NumLock is ON"
    } else {
        numlock_state := "NumLock is OFF"
    }

    Menu, Tray, Tip, %tray_text%`n`n%numlock_state%
}

update_traytip()

; - Alt + CapsLock toggling ---------------------------------

!CapsLock::
    Suspend, Toggle
    SoundPlay, *48
    update_traytip()
    Return



; - Rebinds --------------------------------------------------

;; Common to both numlock states:
i::Numpad5
]::NumpadDiv
l::NumpadAdd
0::NumpadSub
[::NumpadMult
m::Numpad0
v::NumpadDot
s:: enter

CapsLock::           ; Backslash/Pipe
    Send {NumLock}
    SoundPlay, *64
    update_traytip()
    Return



#If (numlock_on() == true)
    7::Numpad7
    8::Numpad8
    9::Numpad9

    g::Numpad4
	c::Numpad5
    r::Numpad6

    h::Numpad1
    t::Numpad2
    n::Numpad3

	w::=

#If (numlock_on() == false)
    7::NumpadHome
    8::NumpadUp
    9::NumpadPgUp

    g::NumpadLeft
    r::NumpadRight

    h::NumpadEnd
    t::NumpadDown
    n::NumpadPgDn

	w::NumpadIns
