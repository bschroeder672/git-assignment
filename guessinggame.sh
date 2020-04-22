

answer=$(ls | wc -l)
correct=false

echo "How many files are in the working directory?"
echo "Type in a number and then press Enter:"
read guess
echo "You guessed: $guess"

while [[$correct -eq 1]]
do
  if [[$guess -eq $answer]]
  then
    echo "Correct!"
    correct=0
  elif [[$guess -gt $answer]]
  then
    echo "Too high"
  elif [[$guess -lt $answer]]
  then
    echo "Too low"
  fi
done
