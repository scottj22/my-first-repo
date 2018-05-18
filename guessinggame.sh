function startquestion {
echo "How many files are this directory?"
}

startquestion

files=$(pwd | ls | wc -l)

until [[ $userreply -eq $files ]]; do
	read userreply
	if [[ $userreply -gt $files ]]
	then
		echo "You entered $userreply, which is too high"
	elif [[ $userreply -lt $files ]]
	then
		echo "You entered $userreply, which is too low"
	fi
done

echo "You have guessed correctly, $userreply."
echo "Program Ending."
