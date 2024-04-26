#Requires AutoHotkey v2.0
;Python code snippet to simulate arrow key presses using AutoHotkey syntax
;Define hotkeys for arrow keys

#HotIf WinActive("ahk_exe HD-Player.exe")

{
$^m:: {
	While GetKeyState('RCtrl','P') {
		MouseClick "left"
		Sleep 1000
	}
}
$up:: {
    While GetKeyState('up', 'P') {
        MouseMove 0, -8, 45, "R"
        Sleep 1
    }
}
$down:: {
    While GetKeyState('down', 'P') {
        MouseMove 0, 8, 45, "R"
        Sleep 1
    }
}
$left:: {
    While GetKeyState('left', 'P') {
        MouseMove -8, 0 , 45, "R"
        Sleep 1
    }
}
$right:: {
    While GetKeyState('right', 'P') {
        MouseMove 8, 0 , 45, "R"
        Sleep 1
    }
}
$,:: {
    While GetKeyState(",", 'P') {
        Send "{Wheeldown}"
        Sleep 1
    }
}

$.:: {
    While GetKeyState(".", 'P') {
        Send "{Wheelup}"
        Sleep 1
    }
}
$\:: {
    While GetKeyState("\", 'P') {
        MouseClick "middle"
        Sleep 1000
    }
}
$!z:: {
    {
        MouseMove 198,1080
        Sleep 100
    }
}
$f1:: {
    {
        send "{left}"
        Sleep 100
    }
}
$f2:: {
    {
        send "{right}"
        Sleep 100
    }
}

toggle := False

Ins:: {
 Global toggle := !toggle
 SoundBeep 1000 + 500 * toggle
}

#HotIf toggle
a::m
b::n
c::o
d::p
e::q
f::r
g::s
h::t
i::u
j::v
k::w
l::x
enter::y
space::z
#HotIf


}
return