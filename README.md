# my vimrc

really just here to be able to use it on other computer even when ssh decides that it won't work today

# Note

to support the background color of the terminal changing you need a terminal supporting certain escape sequances and a file name `set_term_bg` with the content of:

```bash
#!/usr/bin/env bash

if [[ "$TERM" == "screen-256color" ]]; then
	echo -ne "\\ePtmux;\\e\\033]11;$1\\007\\e\\\\"
else
	echo -ne "\\033]11;$1\\007"
	echo "\"$1\""
fi
```

in your path.
