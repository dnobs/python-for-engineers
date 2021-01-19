#######################################################
# USE THE FOLLOWING TO STRUCTURE THE SETUP SCRIPT!!
# from: https://www.tutorialspoint.com/unix/case-esac-statement.htm

#!/bin/sh

option="${1}" 
case ${option} in 
   -f) FILE="${2}" 
      echo "File name is $FILE"
      ;; 
   -d) DIR="${2}" 
      echo "Dir name is $DIR"
      ;; 
   *)  
      echo "`basename ${0}`:usage: [-f file] | [-d directory]" 
      exit 1 # Command to come out of the program with status 1
      ;; 
esac 

###############################################
# this is my attempt to redo the above, in a sensible way
#!/bin/sh

option="${1}" 
case ${option} in 
    -r)
       echo "running remote setup"
       ;; 
    -l)
       echo "running local setup"
       ;; 
   -ide)
       echo "setting up ide"
    *)  
       echo "`basename ${0}`:usage: [-r remote] | [-l local]" 
       exit 1 # Command to come out of the program with status 1
       ;; 
esac