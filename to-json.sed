#!/bin/sed -f
1{
s@.*@[@
p
}
2{
s@\([0-9]*\)\t\([0-9]*\)@{"vehicle-nr":\1,"capacity":\2},@
p
}
/^cust-nr/d

4,${
s@\([0-9]*\)\t@{"cust-nr":\1,\n@
s@\n\([0-9]*\)\t@"x":\1,\n@
s@\n\([0-9]*\)\t@"y":\1,\n@
s@\n\([0-9]*\)\t@"demand":\1,\n@
s@\n\([0-9]*\)\t@"earliest":\1,\n@
s@\n\([0-9]*\)\t@"latest":\1,\n@
s@\n\([0-9]*\)$@"cost":\1},@
${
s@,$@\n]@
}
p
}

d
10q