buf := Buffer(8, 0) ; V1toV2: if 'buf' is a UTF-16 string, use 'VarSetStrCapacity(&buf, 8)' and replace all instances of 'buf.Ptr' with 'StrPtr(buf)'
NumPut("Int", 1, buf)
NumPut("UPtr", A_PtrSize, SizeInBytes, CopyDataStruct)
NumPut("UPtr", 2*A_PtrSize, SizeInBytes, CopyDataStruct)
x := NumGet(buf, A_PtrSize, "UPtr")
y := NumGet(buf, 0, "Int")
