# Stolen from
#   https://github.com/sstephenson/rbenv/blob/master/completions/rbenv.zsh
#
#f [[ ! -o interactive ]]; then
#   return
#i
#
#ompctl -K _rbenv rbenv
#
#rbenv() {
# local word words completions
# read -cA words
# word="${words[2]}"
#
# if [ "${#words}" -eq 2 ]; then
#   completions="$(rbenv commands)"
# else
#   completions="$(rbenv completions "${word}")"
# fi
#
# reply=("${(ps:\n:)completions}")
#
