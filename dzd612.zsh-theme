PROMPT='%{$fg_bold[yellow]%}%n%{$reset_color%}: %{$fg_bold[cyan]%}%~%{$reset_color%} $(git_prompt_info)'
# PROMPT+='
# %(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )%{$reset_color%}'

PROMPT+='
%(?:🐭 :🐙 )%{$reset_color%}'
# Reference: https://codeburst.io/adding-an-octopus-to-the-zsh-prompt-56edf2e9bcad

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
