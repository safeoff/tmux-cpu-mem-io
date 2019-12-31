# tmux-cpu-mem-io

This is TPM plugin.  
It display CPU MEM I/O usage.  
Linux Only.

![01](https://raw.githubusercontent.com/safeoff/tmux-cpu-mem-io/master/01.png)

## Usage
```
set -g status-right "#($TMUX_PLUGIN_MANAGER_PATH/tmux-cpu-mem-io/scripts/cpu-mem-io.sh)"
```

## Install
```
set -g @plugin 'safeoff/tmux-cpu-mem-io'
```
