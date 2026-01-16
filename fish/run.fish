function run
    if test (count $argv) -eq 0
        echo "Usage: run <filename.cpp>"
        return 1
    end
    
    set file $argv[1]
    set name (basename $file .cpp)
    
    if test -f $file
        echo "Compiling $file ..."
        g++ $file -o $name
        if test $status -eq 0
            echo "Running ./$name ..."
            echo "---------------------------"
            ./$name
        else
            echo "❌ Compilation failed."
        end
    else
        echo "❌ File not found: $file"
    end
end
