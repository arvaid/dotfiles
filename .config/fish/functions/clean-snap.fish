function clean-snap --description 'Remove old versions of snaps'
  #set fish_trace 0 1 
  LANG=C snap list --all | awk '/disabled/{print $1, $3}' |
    while read snapname revision
      sudo snap remove "$snapname" --revision="$revision"
    end
end
