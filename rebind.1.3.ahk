#Requires AutoHotkey v2.0
;Python code snippet to simulate arrow key presses using AutoHotkey syntax
;Define hotkeys for arrow keys

#HotIf WinActive("ahk_exe HD-Player.exe")  ; script only functions when the program HD-Player.exe is running in the foreground, you can replace this with any running exe

{
$^m:: { ; $ is a variable if I understand correct, and ^ is the literal keyboard button ctrl, m is simply the letter m on the keyboard, briefly stated, this means ctrl+m on the keyboard, this redirects the input to output the left click of the mouse)
	While GetKeyState('RCtrl','P') {
		MouseClick "left"
		Sleep 1000 ; cpu wait cycles so that the command has time to process at the correct speed
	}
}
$up:: { ; up is up arrow on keyboard or variable for keyboard key up. MouseMove moves the mouse using the following values that correspond to the digits, and R means relative to the current mouse position as opposed to an absolute mouse value such as 1920x1080, or 0x0. Negative values correspond to the opposite x and y axis of the screen/mouse.
    While GetKeyState('up', 'P') {
        MouseMove 0, -8, 45, "R"
        Sleep 1  ; cpu wait cycles so that the command has time to process at the correct speed
    }
}
$down:: { ; move the mouse down
MouseMove 0, 8, 45, "R" ;the number 8 represents the number of pixels to be moved by. and 45 is the speed. For example MouseMove 20, -80, 50, "R",performs the mouse movement something like the following 20 pixels right and 80 pixels down with a speed of 50. 
    While GetKeyState('down', 'P') {
        MouseMove 0, 8, 45, "R"
        Sleep 1
    }
}
$left:: {  ; move the mouse left
    While GetKeyState('left', 'P') {
        MouseMove -8, 0 , 45, "R"
        Sleep 1
    }
}
$right:: {  ; move the mouse right
    While GetKeyState('right', 'P') {
        MouseMove 8, 0 , 45, "R"
        Sleep 1
    }
}
$,:: {
    While GetKeyState(",", 'P') { ; 'P' represents internal function of ahk and means while pressed
        Send "{Wheeldown}"
        Sleep 1
    }
}

$.:: { ; ; keyboard key (period) in this case is remapped to wheelup on the mouse, again it's out of the way on the basic function of input and arbitrary.
Send "{Wheelup}"
    While GetKeyState(".", 'P') {
        Send "{Wheelup}"
        Sleep 1
    }
}
$\:: { ; \ is remapped to the middle click, which in blue-stacks config is assigned to exit full screen.
    While GetKeyState("\", 'P') {
        MouseClick "middle"
        Sleep 1000
    }
}
$!z:: { ;(hides the mouse cursor when viewing youtube app for example)
    {
        MouseMove 1920,1080
        Sleep 100
    }
}
$f1:: { ; Simply f1 on the keyboard this sends left for panning left and right (f2 immediately below) at the desired timestamp, inside the youtube app.
    {
        send "{left}"
        Sleep 100
    }
}
$f2:: { ; Simply f2 on the keyboard this sends left for panning left and right at the desired timestamp, inside the youtube app.
    {
        send "{right}"
        Sleep 100
    }
}

toggle := False ; This expands the 0-9 on the remote to do a second set of letters. easily interpreted by the literal translation. a is remapped to m thus a::m; This expands the 0-9 on the remote to do a second set of letters. easily interpreted by the literal translation. a is remapped to m thus a::m

Ins:: {
 Global toggle := !toggle
 SoundBeep 1000 + 500 * toggle ; audible sound when switching alphabet function.
}

#HotIf toggle ; starts hotif statement
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
#HotIf ; ends hotif statement
}