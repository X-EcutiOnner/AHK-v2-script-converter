Gui, 1:Add, Radio, vA, Tooltip
Gui, 1:Add, Radio, vB, Message Box
GuiControl, 1:, A, 1
Gui, 1:show

outputMethod := "msg"
Gui, 2:Add, Radio, vC x50, Tooltip
Gui, 2:Add, Radio, vD, Message Box
GuiControl, 2:, % outputMethod = "tooltip" ? "C" : "D", 1
Gui, 2:show, y425

outputMethod := "tooltip"
Gui, 3:Add, Radio, vE, Tooltip
Gui, 3:Add, Checkbox, vF, Message Box
GuiControl, 3:, % outputMethod = "tooltip" ? "E" : "F", 1
Gui, 3:show, y525

outputMethod := "tooltip"
ctrl := "G"
Gui, 4:Add, Radio, vG, Tooltip
Gui, 4:Add, Radio, vH, Message Box
GuiControl, 4:, % outputMethod = "tooltip" ? ctrl : "H", 1
Gui, 4:show, y600
return