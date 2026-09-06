x:=1
try{
	a := FileRead("f.txt")
}catch{
}
y:=2

try {
	b := FileRead("g.txt")
}catch {
}  ; nothing to do on error
z:=3
