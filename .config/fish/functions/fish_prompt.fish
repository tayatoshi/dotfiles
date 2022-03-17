function fish_prompt --description 'Write out the prompt'
   if test -n "$SSH_TTY"
        echo -n (set_color brred)"$USER"(set_color white)'@'(set_color yellow)(prompt_hostname)' '
    end

    # PWD
    echo -n (set_color --bold blue)(prompt_pwd)
    set_color normal
    echo

    if fish_is_root_user
        echo -n (set_color red)'# '
    end
    echo -n (set_color --bold green)(echo $USER)  (set_color red)'❯'(set_color yellow)'❯'(set_color green)'❯ '
    set_color normal
    
end
