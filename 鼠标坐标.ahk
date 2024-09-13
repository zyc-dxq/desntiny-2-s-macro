;鼠标坐标获取
coordinates := []

Numpad1::
    MouseGetPos, mouseX, mouseY
    coordinates.Push([mouseX, mouseY])
return

Numpad2::
    if coordinates.MaxIndex() > 0 {
        coords := ""
        Loop, % coordinates.MaxIndex()
        {
            coords := coords . coordinates[A_Index][1] . ", " . coordinates[A_Index][2] . "`n"
        }
        ; 
        MsgBox, 记录的坐标依次:`n%coords%
    } else {
        ; 
        MsgBox, 请按小键盘1键记录坐标。
    }
return