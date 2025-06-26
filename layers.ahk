>!a::send,{!}
return
>!s::send,{*}
return
>!f::send,{$}
return
>!d::send,{^}
return
>!v::send,{=}
return
>!c::send,{+}
return
>!x::send,{-}
return
>!z::send,{_}
return
>!j::send,{)}
return
>!k::send,{Text}}
return
>!n::send,{(}
return
>!m::send, {Text}{
return
>!l::send, {\}
return

>^o::send, % Chr(0xF6)
return
>^+o::send, % Chr(0xD6)
return
>^a::send, % Chr(0xE4)
return
>^+a::send, % Chr(0xC4)
return
>^u::send, % Chr(0xFC)
return
>^+u::send, % Chr(0xDC)
return

*CapsLock:: Escape

$f::
$+f::
If Instr(A_PriorKey, "Shift") {
    Send F
    return
} Else KeyWait, f, T.25
If Errorlevel { ; Held
  Send {Shift down}
  KeyWait, f
  Send {Shift up}
} Else Send f
return

$j::
$+j::
If Instr(A_PriorKey, "Shift") {
    Send J
    return
} Else KeyWait, j, T.25
If Errorlevel { ; Held
  Send {Shift down}
  KeyWait, j
  Send {Shift up}
} Else Send j
return


$d::
$+d::
If Instr(A_PriorKey, "Alt") {
    Send d
    return
} Else KeyWait, d, T.25
If Errorlevel { ; Held
  Send {alt down}
  KeyWait, d
  Send {alt up}
} Else Send d
return


$k::
$+k::
If Instr(A_PriorKey, "Alt") {
    Send k
    return
} Else KeyWait, k, T.25
If Errorlevel { ; Held
  Send {alt down}
  KeyWait, k
  Send {alt up}
} Else Send k
return


$a::
$+a::
If Instr(A_PriorKey, "control") {
    Send a
    return
} Else KeyWait, a, T.25
If Errorlevel { ; Held
  Send {control down}
  KeyWait, a
  Send {control up}
} Else Send a
return
