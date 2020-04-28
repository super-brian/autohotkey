#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Alt(mapped to windows) up/down to moves 9 lines
<#Up::Send {Up}{Up}{Up}{Up}{Up}{Up}{Up}{Up}
<#Down::Send {Down}{Down}{Down}{Down}{Down}{Down}{Down}{Down}
<#+Up::Send +{Up}+{Up}+{Up}+{Up}+{Up}+{Up}+{Up}+{Up}+{Up}
<#+Down::Send +{Down}+{Down}+{Down}+{Down}+{Down}+{Down}+{Down}+{Down}+{Down}

; Alt(mapped to windows) left/right to moves by one word
#Left::Send ^{Left}			
#Right::Send ^{Right}
#+Left::Send ^+{Left}
#+Right::Send ^+{Right}

; move windows like on mac
#<!Left::Send #{Left}
#<!Right::Send #{Right}
#<!Up::Send #{Up}
#<!Down::Send #{Down}
^#<!Left::Send #+{Left}
^#<!Right::Send #+{Right}

; CMD(mapped to alt) up/down to PageUp/PageDown
<!Up::Send {PgUp}
<!Down::Send {PgDn}
<!+Up::Send +{PgUp}
<!+Down::Send +{PgDn}

; CMD(mapped to alt) left/right to Home/End
<!Left::Send {Home}
<!Right::Send {End}
<!+Left::Send +{Home}
<!+Right::Send +{End}

; some more for visual studio.
<!-::Send ^{-}
<!+-::Send ^+{-}
<!Space::Send ^{j}

; CMD(mapped to alt): copy/paste, close, save, new tab, quit, find, select all, undo, redo, reload, cut, open, new
<!c::Send {LCtrl down}{c}{LCtrl up}
<!v::Send {LCtrl down}{v}{LCtrl up}
<!w::Send {LCtrl down}{w}{LCtrl up}
<!s::Send {LCtrl down}{s}{LCtrl up}
<!t::Send {LCtrl down}{t}{LCtrl up}
<!q::Send {LAlt down}{F4}{LAlt up}
<!f::Send {LCtrl down}{f}{LCtrl up}
<!a::Send {LCtrl down}{a}{LCtrl up}
<!z::Send {LCtrl down}{z}{LCtrl up}
<!+z::Send {LCtrl down}{LShift down}{z}{LShift up}{LCtrl up}
<!r::Send {LCtrl down}{r}{LCtrl up}
<!x::Send {LCtrl down}{x}{LCtrl up}
<!o::Send {LCtrl down}{o}{LCtrl up}
<!n::Send {LCtrl down}{n}{LCtrl up}
