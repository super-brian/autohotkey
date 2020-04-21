#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Now, cmd > ctrl, ctrl > windows key.

; alt up/down
<!Up::Send {Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}
<!Down::Send {Down}{Down}{Down}{Down}{Down}{Down}{Down}{Down}

; ctrl up/down
<^Up::Send {PgUp}
<^Down::Send {PgDn}

; alt left/right
<!Left::Send {LCtrl down}{Left}{LCtrl up}
<!Right::Send {LCtrl down}{Right}{LCtrl up}
<!+Left::Send {shift down}{LCtrl down}{Left}{LCtrl up}{shift up}
<!+Right::Send {shift down}{LCtrl down}{Right}{LCtrl up}{shift up}

; ctrl left/right
<^Left::Send {Home}
<^Right::Send {End}
<^+Left::Send {shift down}{Home}{shift up}
<^+Right::Send {shift down}{End}{shift up}

; two blocks below is commented out for !Tab and !+Tab are not compatible with these.

; Remap Ctrl-Tab to Alt-Tab
;^Tab::
;Send {Alt down}{Tab}
;Keywait Control
;Send {Alt up}
;return

; Remap Ctrl-Shift-Tab to Alt-Shift-Tab
;^+Tab::
;Send {Alt down}{Shift down}{Tab}
;Keywait Control
;Send {Shift up}
;Send {Alt up}
;return

; had to use caps lock key for ShiftAltTab.
LCtrl & Tab::AltTab
LCtrl & CapsLock::ShiftAltTab

!Tab:: Send ^{Tab}
!+Tab:: Send ^+{Tab}

;<!Tab::
;Send {Control down}{Tab}
;Keywait Alt
;Send {Control up}
;return
