# tmux-cpu-mem-io

This is TPM plugin.  
It display CPU MEM I/O usage.  
Linux Only.

![01](https://raw.githubusercontent.com/safeoff/tmux-cpu-mem-io/master/01.png)

number color is
usage <= 70: red
usage <= 40: yellow

## Usage
```
set -g status-right "#(.tmux/plugins/tmux-cpu-mem-io/scripts/cpu-mem-io.sh)"
```

## Install
```
set -g @plugin 'safeoff/tmux-cpu-mem-io'
```
