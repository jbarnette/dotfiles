alias e="/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -n"
alias jek="jekyll --pygments --auto --server"

# ruby and rails bits
alias rake="rake -qs"
alias rake1.9="rake1.9 -qs"
alias ss="script/server"

# latest versions of unreleased stuff
for f in `find ~/work/p4/src -type f | grep /dev/bin/`
do
    d=`dirname $f`
    alias dev-`basename $f`="ruby -I$d/../lib:$d/../ext -S $f"
done
