setopt nobeep
setopt promptsubst
setopt correct

autoload -U compinit promptinit bashcompinit
compinit
promptinit
bashcompinit

# Grab some essentials from zshkit
mydir="/Users/jmtucker/.zsh/libs/zshkit"
for s in 03_zkbd 05_editor 05_ls \
         05_ruby 06_dirs 06_git \
         06_history 06_less 06_man \
         07_completion 10_bindkey; do
  source $mydir/$s
done
source /Users/jmtucker/.aliases
source /Users/jmtucker/.zsh/set_title_tab

PATH=~/.bin:$PATH:`brew --prefix git`/libexec/git-core:/usr/local/texlive/2009/bin/universal-darwin/:/usr/local/sbin
PYTHONPATH=/usr/local/lib/python2.6/site-packages

prompt wunjo

if [[ -d /Users/jmtucker/.rvm ]]
then
  if [[ -s /Users/jmtucker/.rvm/scripts/rvm ]] ; then source /Users/jmtucker/.rvm/scripts/rvm ; fi
  if [[ -r $rvm_path/scripts/completion ]] ; then source $rvm_path/scripts/completion ; fi
  rvm default
fi
