function fish_title
    set realhome ~
    if test "$_" != "fish"
        echo $_ ''
    else
        if __fish_is_git_repository
            basename (git rev-parse --show-toplevel)
	    set dir (git rev-parse --show-prefix)
	    if test -n $dir:
	    	echo "/$dir" | sed 's:/*$::'
	    end
        else
            string replace -r '^'"$realhome"'($|/)' '~$1' $PWD
        end
    end
end
