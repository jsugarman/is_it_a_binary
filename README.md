# Is it a binary? Is it a script? ...

A summary of various ways to create Command Line Interface tools

##### Plain shell scripts
*must be prefixed with dir*
```
./hellow.sh
```

##### Scripts without an extension
*must, still, be prefixed with dir*
```
./hellow
```

##### Shell functions

load the function:
```
source $PWD/bash_functions/my-functions.sh
```

then call:
```bash
hellow
```

you can permanently add the function to you shell startup via ~/.bash_profile | ~/.bash_rc or similar.

```bash
# example of loading functions at shell startup
cd <cloned-repo-root>
echo "source $PWD/bash_functions/my-functions.sh" >> ~/.bash_profile
# start a new terminal
hellow
```

##### Plain ruby binary

Just place `#!/usr/bin/env ruby` in the top of a file, excluding an extension, and start writing ruby. Access commandline arguments in the ruby code using `ARGV`.

```bash
bin/hellor
bin/hellor hi
bin/hellor bye
```

##### Option parser ruby class (stdlib) binary

A ruby `stdlib` for parsing command line arguments

```bash
# boolean "flags"
bin/hellopt -h
bin/hellopt --help
```

```bash
# boolean switches with no args
bin/hellopt --verbose
bin/hellopt --no-verbose
```

```bash
# switch with required arg
bin/hellopt --require
=> missing argument: --require (OptionParser::MissingArgument)

bin/hellopt --require whatever
```

```bash
# switch with optional arg, and default
bin/hellopt --sleep 1
bin/hellopt --sleep
```

```bash
# switch with validated optional arg, and default
bin/hellopt --output
bin/hellopt --output json
bin/hellopt --output jsonb
```

##### ruby CLI frameworks
###### rake
###### thor
###### hanami/cli


---
#### TODO
- [ ] using a script
- [ ] using symlinks??
- [ ] using loaded functions
- [ ] using ruby optparser
- [ ] using hanami-cli framework
- [ ] other cli frameworks??
- [ ] shc
