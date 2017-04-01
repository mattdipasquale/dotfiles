if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Current Directory: Show in title bar. Abbreviate in prompt with (git-branch).
PROMPT_COMMAND='CUR_DIR=`pwd|sed -e "s!$HOME!~!"|sed -E "s!([^/])[^/]+/!\1/!g"`'
PS1='\[\e]2;\w\a\e[32;1m\]$CUR_DIR$(__git_ps1)\[\e[0m\] '

# Readline Settings
bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'

# Directory Shortcuts
alias prj='cd "$HOME/Dropbox/Projects"'

# Command Aliases
alias    cp='cp -i'
alias fldns='sudo killall -HUP mDNSResponder'
alias  json='pbpaste | python -mjson.tool'
alias    ll='ls -Alp'
alias    ln='ln -i'
alias    mv='mv -i'
alias   pgs='postgres -D /usr/local/var/postgres'
alias rmdss='find . -name .DS_Store -type f -delete'
alias shttp='ruby -run -ehttpd . -p8000'
alias   sim='open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app'

source ~/.bash_profile_private
