# zgitinit and prompt_wunjo_setup must be somewhere in your $fpath, see README for more.

# Grab some essentials from zshkit
mydir="/Users/jmtucker/.zsh/libs/zshkit"
for s in 03_zkbd 05_editor 05_ls \
         05_ruby 06_dirs 06_git \
         06_history 06_less 06_man \
         07_completion 10_bindkey; do
  source $mydir/$s
done

setopt promptsubst

# Load the prompt theme system
autoload -U promptinit
promptinit

# Use the wunjo prompt theme
prompt wunjo

# rvm-install added line:
if [[ -s /Users/jmtucker/.rvm/scripts/rvm ]] ; then source /Users/jmtucker/.rvm/scripts/rvm ; fi
if [[ -r $rvm_path/scripts/completion ]] ; then source $rvm_path/scripts/completion ; fi
rvm default

# Load aliases
source /Users/jmtucker/.aliases

PYTHONPATH=/usr/local/lib/python2.6/site-packages