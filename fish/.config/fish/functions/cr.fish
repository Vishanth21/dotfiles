function cr
    if test (count $argv) -gt 0
        # Args provided
        echo "--> Compiling: $argv"
        g++ $argv && ./a.out
    else
        # No args: find latest
        set latest (command ls -t | grep -E '\.(cpp|c)$' | head -n 1)
        
        if test -n "$latest"
            echo "--> Compiling: $latest"
            g++ $latest && ./a.out
        else
            echo "No .c or .cpp files found."
        end
    end
end
