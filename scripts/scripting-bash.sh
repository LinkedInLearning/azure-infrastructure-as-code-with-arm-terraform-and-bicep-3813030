# scripting.sh : Bash

# Declare a variable
name="World"

# Use the variable
echo "Hello, $name!"

# Looping

# For loop in Bash
for i in {0..4}; do
    echo "Iteration $i"
done

# While loop in Bash
i=0
while [ $i -lt 5 ]; do
    echo "While loop iteration $i"
    ((i++))
done


# Conditionals
# If statement in Bash
num=10
if [ $num -gt 5 ]; then
    echo "$num is greater than 5"
elif [ $num -eq 5 ]; then
    echo "$num is equal to 5"
else
    echo "$num is less than 5"
fi