#!/bin/sed -f
1s@^@{\n@
1s@Instance [Nn]ame *: *\(.*\)@"instance":"\1",@
2s@Authors *: *\(.*\)@"authors":"\1",@
3s@Date *: *\(.*\)@"date":"\1",@
4s@Reference *: *\(.*\)@"reference":"\1",@
5s@Solution *@"solution":[@
6,${
s@Route *[0-9]* *: *@@
s@ @,@g
s@^@[@
s@$@],@
$s@,$@\n]\n}@
}
