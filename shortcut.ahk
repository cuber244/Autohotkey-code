#NoEnv
SendMode,Input
SetTitleMatchMode,2
#InstallKeybdHook
#UseHook


nkf --overwrite --oc=UTF-8-BOM dev.ahk
/*
###省略記号###

Shift => +
Ctrl => ^
Alt => !
Windows => #

*/ 

+^!a::
	Send,^s
	Reload
return



;テンキー
vk1c & q::NumpadSub
vk1c & a::NumpadMult
vk1c & t::&
vk1c & g::enter


vk1c::enter
vk1c & b::NumpadDot
vk1c & x::Numpad1
vk1c & c::Numpad2
vk1c & v::Numpad3
vk1c & s::Numpad4
vk1c & d::Numpad5
vk1c & f::Numpad6
vk1c & w::Numpad7
vk1c & e::Numpad8
vk1c & r::Numpad9
vk1c & z::Numpad0

vk1c & M::send,{LButton}
vk1c & .::send,{RButton}
vk1c & ,::send,{MButton}
vk1c & h::send,{WheelUp}
vk1c & vkbb::send,{WheelDown}


;リロード
vk1d & s::
		send,^s
		sleep,250
		Reload
	return

;マウス操作
vk1c & i::MouseMove,0,-20, 0, R
vk1c & k::MouseMove,0,20, 0, R
vk1c & j::MouseMove,-20,0, 0, R
vk1c & l::MouseMove,20,0, 0, R
vk1c & n::c



;括弧
vk1C & 8::
backup := ClipboardAll
ClipWait, 2
Clipboard := "()"
ClipWait, 2
Send, ^v
Sleep,60
Clipboard := backup
Send, {Left}
Return



;IME
~LShift::Send  {vk07}
~RShift::Send  {vk07}

; 左Altキーが単独で押された場合、IMEをオフにする
~LAlt Up::
if (A_PriorKey = "LAlt") {
    Send, {vk029}
}
Return

; 右Altキーが単独で押された場合、IMEをオンにする
~RAlt Up::
if (A_PriorKey = "RAlt") {
    Send, {vkF2sc070}
}



;カーソル移動
vk1d & j::left 
vk1d & l::right
vk1d & i::up  
vk1d & k::down

;その他ショートカット
vk1d::BS
vk1d & h::BS
vk1d & g::BS
vk1d & d::delete 
vk1d & v::^v
vk1d & c::^c 
vk1d & x::^x 
vk1d & r::^z
vk1d & e::esc
vk1d & f::enter
vk1d & a::home
vk1d & o::end
vk1d & t::_ 
vk1d & u::
	send,{home}+{end}{BS}
    return
vk1d & vkbb::=


;エクスプローラー

!1:: Run, C:\
!2:: Run, H:\


;アプリ起動
vk1d & z::Run, C:\Users\nisi0\AppData\Local\Vivaldi\Application\vivaldi.exe
vk1d & space::Run, "C:\Program Files\Everything\Everything.exe"


