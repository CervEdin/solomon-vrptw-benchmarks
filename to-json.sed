#!/bin/sed -f
1{
s@\(.*\)@{\n"instance":"\1",@
p
}
3{
s@\([0-9]*\)\t\([0-9]*\)@"nVehicles":\1,\n"capacity":\2,@
p
}
/^cust-nr/d

5s@^@"customers":[\n@
5,${
s@\([0-9]*\)\t@{"cust-nr":\1,\n@
s@\n\([0-9]*\)\t@"x":\1,\n@
s@\n\([0-9]*\)\t@"y":\1,\n@
s@\n\([0-9]*\)\t@"demand":\1,\n@
s@\n\([0-9]*\)\t@"earliest":\1,\n@
s@\n\([0-9]*\)\t@"latest":\1,\n@
s@\n\([0-9]*\)$@"cost":\1},@
${
s@,$@\n]\n}@
}
p
}

d
