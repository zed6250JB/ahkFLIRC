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
        MouseMove 0, -15, 300, "R"
        Sleep 1
    }
}
$down:: {
    While GetKeyState('down', 'P') {
        MouseMove 0, 15, 300, "R"
        Sleep 1
    }
}
$left:: {
    While GetKeyState('left', 'P') {
        MouseMove -15, 0 , 300, "R"
        Sleep 1
    }
}
$right:: {
    While GetKeyState('right', 'P') {
        MouseMove 15, 0, 300, "R"
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
        Sleep 100
    }
}
$!z:: {
    {
        MouseMove 1920,1080
        Sleep 100
    }
}
return
}
