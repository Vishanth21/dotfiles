function armsim
    set sim_dir "/mnt/data/Downloads/armsim"
    
    if test (count $argv) -gt 0
        # 1. Get the absolute path of your target file
        set target_file (realpath $argv[1])
        
        # 2. Calculate the path RELATIVE to the simulator folder.
        #    This turns "/mnt/data/..." into "../../programming/..."
        #    Since it doesn't start with "/", ARMSim accepts it as a file.
                set rel_path (realpath --relative-to=$sim_dir $target_file)
        
                pushd $sim_dir > /dev/null
                mono ARMSim.exe $rel_path
                popd > /dev/null
        else
                # No file provided, just open the app
                pushd $sim_dir > /dev/null
                mono ARMSim.exe
                popd > /dev/null
        end
end
