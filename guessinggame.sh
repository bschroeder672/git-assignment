

answer=$(ls | wc -l)

echo "How many files are in the working directory?"
echo "Type in a number and then press Enter:"
read guess
echo "You guessed: $guess"


if [[$guess -eq 4]]
then
  echo "Correct!"
fi
