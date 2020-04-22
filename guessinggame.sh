
answer=$(ls | wc -l)
correct=1

function askquestion {
  echo "How many files are in the working directory?"
  echo "Type in a number and then press Enter:"
}

while [[ $correct -eq 1 ]]
do
  askquestion
  read guess
  echo "You guessed: $guess"

  if [[ $guess -eq $answer ]]
  then
    echo "Correct!"
    correct=0
  elif [[ $guess -gt $answer ]]
  then
    echo "Too high"
  elif [[ $guess -lt $answer ]]
  then
    echo "Too low"
  fi
done
