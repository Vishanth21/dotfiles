function getmob
    ssh -T phone "termux-clipboard-get" > /tmp/mob_clip
    xclip -selection clipboard -i < /tmp/mob_clip
    echo "Pulled clipboard from phone!"
end
