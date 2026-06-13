function setmob
    xclip -selection clipboard -o > /tmp/lap_clip
    ssh -T phone "termux-clipboard-set" < /tmp/lap_clip
    echo "Pushed clipboard to phone!"
end
