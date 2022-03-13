# The Solomon VRPTW benchmark problems

The Solomon problems are a popular set of Vehicle Routing with Time Windows (VRPTW) problems.
It is commonly in operational reseach (OR) and related fields when studying various flavors of vehicle routing problems.

# Source

Originally published [here in html](http://web.cba.neu.edu/~msolomon/problems.htm)
but also packaged [into zip folders here](https://people.idsia.ch/~luca/macs-vrptw/problems/welcome.htm)
(*this was used as the source for this repository*).

# The problems in JSON format

The problems are published in plain-text format.
Rather than having to write a dedicated parser,
I thought it convenient to convert the source material into JSON.

The structure is 

```text
c
	1
		c101.json
		c102.json
	...
	2
		c201.json
	...
r
	1
		r101.json
		...
...
```

The conversions may be reproduced using the zipped plain-text files
[published here](https://people.idsia.ch/~luca/macs-vrptw/problems/welcome.htm)
by unzipping them and running `./convert.sh`.

# Contribution

Pull requests and issues are welcome.
