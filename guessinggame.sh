function testAnswer {
	if [[ $answer = $(ls | wc -l) ]]
        then 
                echo "Congratulations! Your answer is correct"
                band=0
        elif [[ $answer -lt $(ls | wc -l) ]]
        then
                echo "Your guess was too low"
		echo "Try again"
        else
                echo "Your guess was too high"
		echo "Try again"
	fi
}
echo "How many files are in the current directory?"
band=1
while [[ $band = 1 ]]
do
	read answer
	testAnswer
done
