x:=1
try{
	FileRead, a, f.txt
}catch{}
y:=2

try {
	FileRead, b, g.txt
} catch {}  ; nothing to do on error
z:=3
