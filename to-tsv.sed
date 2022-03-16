#!/bin/sed -f
1p
4{
s@ *NUMBER@vehicle-number@
s@ *CAPACITY@	capacity@
p
}
5{
s@ *\([0-9]*\) *\([0-9]*\)@\1	\2@
p
}

8{
s@CUST NO.@id@
s@XCOORD\.@x@
s@YCOORD\.@y@
s@DEMAND@demand@
s@READY TIME@earliest@
s@DUE DATE@latest@
s@SERVICE   TIME@cost@
s@ \{1,\}@	@g
p
}
10,${
s@^ *@@
s@ *$@@
s@ \{1,\}@	@g
p
}
d
