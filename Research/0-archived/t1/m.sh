#!/bin/bash


# Delete Makefile (Be sure no Makefile)
rm Makefile 2> /dev/null

# Make Makefile
touch Makefile

names=() # store the name of ".c" file, without ".c"
i=0 # Index of names array

# Fill out names first
for file in *; do 
    if [ -f "$file" ] && [ ${file: -2} == ".c" ]; then         
        names[$i]="${file%.*}"
        ((i++))
    fi 
done


i=0 # Reset index of names array to 0

for file in *; do 
    if [ -f "$file" ] && [ ${file: -2} == ".c" ]; then   
        # Delete file.h (Be sure no file.h)
        rm "${file%.*}".h 2> /dev/null

        # Create .h file
        touch "${file%.*}".h

        # Loop to find signature of every function, append them in file.h
        while IFS= read -r line; do
            # Check the starting with "type" and ending with ")"
            if  ([[ $line == "char "* ]] || 
                [[ $line == "short "* ]] || 
                [[ $line == "int "* ]] || 
                [[ $line == "long "* ]] || 
                [[ $line == "float "* ]] || 
                [[ $line == "double "* ]] || 
                [[ $line == "struct "* ]] || 
                [[ $line == "union "* ]] || 
                [[ $line == "enum "* ]] || 
                [[ $line == "char "* ]] || 
                [[ $line == "*short "* ]] || 
                [[ $line == "*int "* ]] || 
                [[ $line == "*long "* ]] || 
                [[ $line == "*float "* ]] || 
                [[ $line == "*double "* ]] || 
                [[ $line == "*struct "* ]] || 
                [[ $line == "*union "* ]] || 
                [[ $line == "*enum "* ]] || 
                [[ $line == "void "* ]]) &&
                ([[ $line == *")" ]] || 
                [[ $line == *"){" ]] ||
                [[ $line == *"){}" ]]) ; then
                echo ${line%'{'*} >> "${file%.*}".h
                echo >> "${file%.*}".h
            fi
        done <$file
    fi 
done


# Start of Makefile
echo "all:" ${names[@]} >> Makefile
echo >> Makefile


# Middle of Makefile
for name in ${names[@]}; do
    echo $name":" $name".o" >> Makefile
	echo -e '\t'"gcc -o" $name $name".o" >> Makefile
    echo >> Makefile
    echo $name".o:" $name".c" $name".h">> Makefile
	echo -e '\t'"gcc -c" $name".c" >> Makefile
    echo >> Makefile 
done


# End of Makefile
echo "clean:" >> Makefile
echo -e '\t'"rm -f *.o" ${names[@]} >> Makefile