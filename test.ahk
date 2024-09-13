﻿#Requires AutoHotkey v2.0-
#SingleInstance Force

MonitorCount := MonitorGetCount()
MonitorPrimary := MonitorGetPrimary()
MsgBox "Monitor Count:`t" MonitorCount "`nPrimary Monitor:`t" MonitorPrimary
Loop MonitorCount
{
    MonitorGet A_Index, &L, &T, &R, &B
    MonitorGetWorkArea A_Index, &WL, &WT, &WR, &WB
    MsgBox
    (
        "Monitor:`t#" A_Index "
        Name:`t" MonitorGetName(A_Index) "
        Left:`t" L " (" WL " work)
        Top:`t" T " (" WT " work)
        Right:`t" R " (" WR " work)
        Bottom:`t" B " (" WB " work)"
    )
}
MouseMove(0, 0)




::btw::by the way