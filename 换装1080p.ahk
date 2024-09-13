#Requires AutoHotkey v2.0-
#SingleInstance Force
;定义坐标位置
positions := {
  expand_position: [79,534],
  Numpad1_position: [163,332], Numpad2_position: [235,332],
  Numpad3_position: [163,430], Numpad4_position: [235,430],
  Numpad5_position: [163,526], Numpad6_position: [235,526],
  Numpad7_position: [163,625], Numpad8_position: [235,625],
  Numpad9_position: [163,720], Numpad10_position:[235,720],
  Numpad11_position:[163,800], Numpad12_position:[235,800]
}
positions.Numpad0_position :=positions.Numpad10_position
positions.NumpadDot_position:=positions.Numpad11_position
positions.NumpadDot_position:=positions.Numpad11_position
positions.NumpadSub_position:=positions.Numpad12_position
Numpad1::
Numpad2::
Numpad3::
Numpad4::
Numpad5::
Numpad6::
Numpad7::
Numpad8::
Numpad9::
Numpad0::
NumpadDot::
NumpadDel::
NumpadSub::{ 
  key := A_ThisHotkey "_position"
  numpad := positions.%key%
  mouseMoveToAndClick(numpad)
}
mouseMoveToAndClick(position){
  pressKey("I",300)

  Sleep 400

  pressKey("Left",300)

  Sleep 200

  Click position[1], position[2]
  ; MouseMove position[1], position[2]
  Sleep 100
  pressKey("ESC",30) 
  Sleep 100
  pressKey("ESC",30) 
}
pressKey(key,sleepTime:=10){
  Send "{" key " down}"
  Sleep sleepTime
  Send "{" key " up}"
}
#HotIf WinActive("Code")
a::ShowMsgBox
#HotIf


ShowMsgBox(){ 
  MsgBox("3333")
}