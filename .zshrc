# set history file location
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
# set the size to be really large
SAVEHIST=1000000000
HISTSIZE=1000000000
HISTFILESIZE=1000000000

setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_FIND_NO_DUPS         # Duplicates don't show up when going up and down but still written
