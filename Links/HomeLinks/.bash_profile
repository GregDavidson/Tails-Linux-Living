declare -A source_count
my_sw=~/Persistent/SW
this=.bash_profile
let ++source_count["$this"]
for d in "$my_sw"/*/[Bb]in; do
	[ -d "$d" ] && case ":$PATH:" in
		"*:$d:*") ;;
		*) PATH="$d:$PATH" ;;
	esac
done
fortune -a
restore-dotfiles
