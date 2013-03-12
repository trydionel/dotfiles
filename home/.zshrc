setopt nobeep
setopt promptsubst
setopt correct
setopt histignorespace

bindkey -e

autoload -U compinit promptinit
promptinit

# Grab some essentials from zshkit
mydir="$HOME/.zsh/libs/zshkit"
for s in 03_zkbd 05_editor 05_ls \
         05_ruby 06_dirs 06_git \
         06_history 06_less 06_man \
         07_completion 10_bindkey; do
  source $mydir/$s
done
source $HOME/.aliases
source $HOME/.zsh/set_title_tab
source $HOME/.bundlerc

PATH=~/.bin:/usr/local/bin:$PATH
PATH=$PATH:`brew --prefix git`/libexec/git-core:/usr/local/texlive/2009/bin/universal-darwin/:/usr/local/sbin:/usr/local/lib/node_modules/:/usr/local/lib/node_modules
PYTHONPATH=/usr/local/lib/python2.6/site-packages
export NODE_PATH=/usr/local/lib/node_modules:/usr/local/lib/node

#prompt wunjo

if [[ -d $HOME/.rvm ]]
then
  if [[ -s $HOME/.rvm/scripts/rvm ]] ; then source $HOME/.rvm/scripts/rvm ; fi
  rvm default
fi

fpath=(~/.zsh/Completion $fpath)
compinit
