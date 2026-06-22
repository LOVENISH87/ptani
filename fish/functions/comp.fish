function comp
    if test -f $argv[1].java
        javac $argv[1].java; and java $argv[1]
    else
        echo "File $argv[1].java not found"
    end
end
