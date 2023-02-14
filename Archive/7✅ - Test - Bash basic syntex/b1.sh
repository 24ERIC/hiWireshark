

# if [[ -z "$string" ]]; then
#   echo "String is empty"
# elif [[ -n "$string" ]]; then
#   echo "String is not empty"
# fi




# name="John"
# echo "Hi $name"  #=> Hi John
# echo 'Hi $name'  #=> Hi $name




# Shell execution

# echo "I'm in $(pwd)"
# echo "I'm in `pwd`"  # obsolescent
# Same





# set -euo pipefail
# IFS=$'\n\t'







# name="John"
# echo $name  # see below
# echo "$name"
# echo "${name}!"





# wildcard="*.txt"
# option="iv"
# cp -$options $wildcard /tmp






# get_name() {
#   echo "John"
# }

# echo "You are `get_name`"






# echo {A,B} 	    #Same as A B
# echo {A,B}.js 	#Same as A.js B.js
# echo {1..5} 	#Same as 1 2 3 4 5



# Single line comment

: '
This is a
multi line
comment
'

# Substrings
# foo="012345"
# echo ${foo:0:3} 	#Substring (position, length)
# # -> p12
# echo ${foo:(-3):3} 	#Substring from the right
# # -> 345





# foo="123456"
# echo ${#foo} #->6






# # Default values
# foo=null
# # val="123"
# echo ${foo:-val} 	    #$foo, or val if unset (or null)
# echo ${foo:=val} 	    #Set $foo to val if unset (or null)
# echo ${foo:+val} 	    #val if $foo is set (and not null)
# echo ${foo:?message} 	#Show error message and exit if $foo is unset (or null)
# # Omitting the : removes the (non)nullity checks, e.g. ${foo-val} expands to val if unset otherwise $foo.









# myfunc() {
#   return 0
# }

# if myfunc; then
#   echo "success" # 0-success
# else
#   echo "failure" # 1-success
# fi








# [[ -z STRING ]] 	    #Empty string
# [[ -n STRING ]] 	    #Not empty string
# [[ STRING == STRING ]] 	#Equal
# [[ STRING != STRING ]] 	#Not Equal
# [[ NUM -eq NUM ]] 	    #Equal
# [[ NUM -ne NUM ]] 	    #Not equal
# [[ NUM -lt NUM ]] 	    #Less than
# [[ NUM -le NUM ]] 	    #Less than or equal
# [[ NUM -gt NUM ]] 	    #Greater than
# [[ NUM -ge NUM ]] 	    #Greater than or equal
# [[ STRING =~ STRING ]] 	#Regexp
# (( NUM < NUM )) 	    #Numeric conditions
# [[ -o noclobber ]] 	    #If OPTIONNAME is enabled
# [[ ! EXPR ]] 	        #Not
# [[ X && Y ]] 	        #And
# [[ X || Y ]] 	        #Or





Fruits=('Apple' 'Banana' 'Orange')

Fruits[0]="Apple"
Fruits[1]="Banana"
Fruits[2]="Orange"




Fruits=("${Fruits[@]}" "Watermelon")    # Push
Fruits+=('Watermelon')                  # Also Push
Fruits=( "${Fruits[@]/Ap*/}" )          # Remove by regex match
unset Fruits[2]                         # Remove one item
Fruits=("${Fruits[@]}")                 # Duplicate
Fruits=("${Fruits[@]}" "${Veggies[@]}") # Concatenate
lines=(`cat "logfile"`)                 # Read from file

