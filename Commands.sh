# find a pattern in all files contained in a specific filesystem tree
find . -type f -print | sed 's/ /\\ /g' | xargs grep -i "my text string"
