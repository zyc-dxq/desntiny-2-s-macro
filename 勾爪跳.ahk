#Requires AutoHotkey v2.0-
;钩爪流明
4::{
    Click "Down Left"
    Sleep 1
    Send "{Q down}"
    Sleep 1
    Send "{ESC down}"
    Sleep 1
    Send "{ESC up}"
    Sleep 1
    Send "{Q up}"
    Sleep 1
    Click "Up Left"
}