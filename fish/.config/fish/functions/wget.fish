function wget --wraps='aria2c -x 16 -s 16' --description 'alias wget=aria2c -x 16 -s 16'
    aria2c -x 16 -s 16 $argv
end
