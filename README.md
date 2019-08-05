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
```
hellow
```

you can permanently add the function to you shell startup via ~/.bash_profile | ~/.bash_rc or similar.

```
# example of loading functions at shell startup
cd <cloned-repo-root>
echo "source $PWD/bash_functions/my-functions.sh" >> ~/.bash_profile
# start a new terminal
hellow
```

##### Plain ruby binary

```
bin/hellor
```

##### Option parser ruby class (stdlib) binary

##### Hanami cli ruby framework binary

---
#### TODO
- [ ] using a script
- [ ] using symlinks??
- [ ] using loaded functions
- [ ] using ruby optparser
- [ ] using hanami-cli framework
- [ ] other cli frameworks??
- [ ] shc
