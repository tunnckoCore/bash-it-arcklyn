###
# Arcklyn Aliases <https://github.com/tunnckoCore/bash-it-arcklyn>
#
# Copyright (c) 2016 Charlike Mike Reagent <@tunnckoCore> (http://www.tunnckocore.tk)
# Released under the MIT license.
###

cite 'about-alias'
about-alias 'common arcklyn aliases (see http://j.mp/bash-it-arcklyn)'


# git back from https://github.com/tj/git-extras
alias gb='git back && git push -f'
alias gback='git back && git push -f'
alias gitback='git back && git push -f'

alias home='cd $HOME'
alias cov='istanbul cover test.js'
alias gtok="echo `cat $HOME/.config/.github-token`"
alias nrt='npm run test'
alias kt='kill-tabs'
alias new='khaos create new'
alias stf='standard-format -w'
alias sf='standard-format -w'
alias gac='git add -A && git commit -v -S -m'

gad() {
  if [ $# -eq 0 ]
  then
    gac 'default commit message' && git push
  else
    gac "$1" && git push
  fi
}
