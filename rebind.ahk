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
    While GetKeyState('up') {
        MouseMove 0, -20, 50, "R"
        Sleep 10
    }
}
$down:: {
    While GetKeyState('down', 'P') {
        MouseMove 0, 20, 50, "R"
        Sleep 10
    }
}
$left:: {
    While GetKeyState ('left', 'P') {
        MouseMove -20, 0 , 50, "R"
        Sleep 10
    }
}
$right:: {
    While GetKeyState('right', 'P') {
        MouseMove 20, 0 , 50, "R"
        Sleep 10
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
