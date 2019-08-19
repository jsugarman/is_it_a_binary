# Is it a binary? Is it a script? ...

A summary of various ways to create Command Line Interface tools

*any executable will have to have its execute mode enabled*
```
chmod 755 my-executable
```

##### Plain shell scripts
*must be prefixed with dir*
```
./hellos.sh
```

##### Scripts without an extension
*must, still, be prefixed with dir*
```
./hellos
```

##### Shell functions

load the function:
```
source $PWD/bash_functions/my-functions.sh
```

then call:
```bash
hellof
hellof hi
hellof bye
twizzler
```

you can permanently add the function to you shell startup via ~/.bash_profile, ~/.bashrc or similar.

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

A ruby `stdlib` for parsing command line arguments, for when shell scripts args and
parsing ARGV in ruby scripts get too unwieldy.

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

The most popular cli framework, this ruby "make" program can take alot
of the work out of writing simple CLI's. For more complicated CLIs with mutiple options however...

###### thor

A popular framework used by a lot of other gems (such as `railties`, `guard`)

```bash
# out of the box help commands
cli/hellothor help
cli/hellothor help hello
```

```bash
# basic use
cli/hellothor hello Joel
```

```bash
# easy option adding
option :yell, :type => :boolean

# use:
  if options[:yell] ...

# examples:
  cli/hellothor hello Joel --yell
  cli/hellothor hello Joel --yell --from Jim
```

```bash
# required arguments
option :from, :required => true

# use:
  if options[:yell] ...

# examples:
  cli/hellothor hello Joel --yell
  cli/hellothor hello Joel --yell --from Jim
```
```bash
# sub commands
# TODO
```

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
