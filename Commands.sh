# find a pattern in all files contained in a specific filesystem tree
find . -type f -print | sed 's/ /\\ /g' | xargs grep -i "my text string"

# Appends the public key to a server through ssh
ssh user@server "echo \"`cat .ssh/id_rsa.pub`\" >> .ssh/authorized_keys"
