myGui := Gui()
ogcRadioA := myGui.Add("Radio", "vA", "Tooltip")
ogcRadioB := myGui.Add("Radio", "vB", "Message Box")
ogcRadioA.Value := 1
myGui.show()

outputMethod := "msg"
oGui2 := Gui()
ogcRadioC := oGui2.Add("Radio", "vC x50", "Tooltip")
ogcRadioD := oGui2.Add("Radio", "vD", "Message Box")
(outputMethod = "tooltip" ? ogcRadioC : ogcRadioD).Value := 1
oGui2.show("y425")

outputMethod := "tooltip"
oGui3 := Gui()
ogcRadioE := oGui3.Add("Radio", "vE", "Tooltip")
ogcCheckboxF := oGui3.Add("Checkbox", "vF", "Message Box")
(outputMethod = "tooltip" ? ogcRadioE : ogcCheckboxF).Value := 1 ; V1toV2: Ternary control types are different, check docs to ensure method is valid
oGui3.show("y525")

outputMethod := "tooltip"
ctrl := "G"
oGui4 := Gui()
ogcRadioG := oGui4.Add("Radio", "vG", "Tooltip")
ogcRadioH := oGui4.Add("Radio", "vH", "Message Box")
(outputMethod = "tooltip" ? ctrl : ogcRadioH).Value := 1 ; V1toV2: Expression in ternary requires manual fixing, try: %"ogcTYPE" . EXPRESSION%
oGui4.show("y600")
return