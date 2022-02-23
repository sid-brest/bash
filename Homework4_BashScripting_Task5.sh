# Let’s develop a simple console game! You’re given a script template (see below). 
# Append script which will be:
# At the beginning of the game script randomly sets Magic number
# User is running script and trying to guess magic number:
# if entered number less than magic number, script outputs less; 
# if entered number greater than magic number, script outputs greater; 
# if user have guessed the magic number, script outputs You win!
# Expected output:

# [devops@localhost ~]$ cat 03-magic-number.sh
# #!/bin/bash
# magicNumber=$(( $RANDOM % 100 ))
# ## write your code here ##
# [devops@localhost ~]$ ./03-magic-number.sh
# 10
# less
# 20
# greater
# 15
# You win!
#!/bin/bash