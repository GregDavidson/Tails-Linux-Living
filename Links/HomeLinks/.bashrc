# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

declare -A source_count
links=~/Persistent/Links/HomeLinks
for f in "$links"/.bash_profile; do
  ! (( source_count["${f##*/}"] )) && [[ -f "$f" ]] && . "$f"
done
this=.bashrc
let ++source_count["$this"]

# If not running interactively, don't do anything more
[ -z "$PS1" ] && return

for f in /etc/bashrc ~/.kbashrc ~/.bashrc.d/*; do
    [ -f "$f" ] && . "$f"
done
