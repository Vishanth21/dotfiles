function mob --wraps='ssh -i ~/.ssh/id_ed25519 u0_a490@100.72.177.23 -p 8022' --wraps='ssh phone' --description 'alias mob=ssh phone'
    ssh phone $argv
end
