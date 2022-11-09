#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

F15::Suspend


;１列目
1::sc028    ;sc028は｢:｣のことです
-::^
^::sc073    ;sc073は｢\｣(バックスラッシュ)のことです
\::\        ;\(円記号若しくはバックスラッシュ)はShift+\で｢|｣です
;2列目
q::1
w::,     
e::.
r::-
t::sc027
y::l
u::r
i::d
o::y





;3列目
s::o
d::e
f::i
g::u
h::g
j::n
k::t
l::s
sc027::k
sc028::f

;4列目
z::x
x::c
c::v
v::w
b::q
n::j
m::h
,::m
.::b
/::z
sc073::/
    
;リロード
+^!a::
	Send,^s
	Reload
return
vk1d & s::^s
		
		


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
vk1d & o::end
vk1d & f::enter
vk1d & a::home
vk1d & t::_ 
vk1d & u::send,{home}+{end}{BS}
          

;エクスプローラー

!1:: Run, C:\
!2:: Run, H:\


;アプリ起動
vk1d & z::Run, C:\Users\nisi0\AppData\Local\Vivaldi\Application\vivaldi.exe
vk1d & space::Run, "C:\Program Files\Everything\Everything.exe"


;テンキー
vk1c & 1::NumpadSub
vk1c & a::NumpadMult
vk1c & vkbb::vkba
vk1c & u::enter
vk1c & x::NumpadDot
vk1c::enter
vk1c & c::Numpad1
vk1c & v::Numpad2
vk1c & w::Numpad3
vk1c & o::Numpad4
vk1c & e::Numpad5
vk1c & i::Numpad6
vk1c & ,::Numpad7
vk1c & .::Numpad8
vk1c & -::Numpad9
vk1c & q::&

