function n
    set tmp (mktemp)

    nnn -p $tmp

    if test -s $tmp
        set file (cat $tmp)

        if test -n "$TMUX"
            tmux split-window -h "nvim '$file'"
        else
            nvim "$file"
        end
    end

    rm $tmp
end
