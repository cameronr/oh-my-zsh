# Personalized!

# Grab the current date (%D) and time (%T) wrapped in {}: {%D %T}
DALLAS_CURRENT_TIME_="%{$fg[white]%}[%{$fg[yellow]%}%T%{$fg[white]%}]%{$reset_color%}"
# Grab the current version of ruby in use (via RVM): [ruby-1.8.7]
if which rvm-prompt &> /dev/null; then
  DALLAS_CURRENT_RUBY_="%{$fg[white]%}[%{$fg[magenta]%}\$(~/.rvm/bin/rvm-prompt i v)%{$fg[white]%}]%{$reset_color%}"
else
  if which rbenv &> /dev/null; then
    DALLAS_CURRENT_RUBY_="%{$fg[white]%}[%{$fg[magenta]%}\$(rbenv version | sed -e 's/ (set.*$//')%{$fg[white]%}]%{$reset_color%}"
  fi
fi
# Grab the current machine name: muscato
DALLAS_CURRENT_MACH_="%{$fg[green]%}%m%{$fg[white]%}:%{$reset_color%}"
# Grab the current filepath, use shortcuts: ~/Desktop
# Append the current git branch, if in a git repository: ~aw@master
DALLAS_CURRENT_LOCA_="%{$fg[blue]%}%c\$(git_prompt_info)%{$reset_color%}"
# Grab the current username: dallas
DALLAS_CURRENT_USER_="%{$fg[red]%}%n%{$reset_color%}"
# Use a % for normal users and a # for privelaged (root) users.
DALLAS_PROMPT_CHAR_="%{$fg[white]%}%(!.#.%%)%{$reset_color%}"
# For the git prompt, use a white @ and blue text for the branch name
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[white]%}@%{%F{8}%}"
# Close it all off by resetting the color and styles.
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
# Do nothing if the branch is clean (no changes).
ZSH_THEME_GIT_PROMPT_CLEAN=""
CRUNCH_GIT_DIRTY_COLOR="%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$CRUNCH_GIT_DIRTY_COLOR�%}�"

# Put it all together!
PROMPT="$DALLAS_CURRENT_TIME_ $DALLAS_CURRENT_RUBY_$DALLAS_CURRENT_MACH_$DALLAS_CURRENT_LOCA_ $DALLAS_PROMPT_CHAR_ "
#  PROMPT="$DALLAS_CURRENT_LOCA_"
