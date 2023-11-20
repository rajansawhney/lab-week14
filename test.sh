echo "Running tests..."
echo

echo "*****"
echo -e "Inheritance...\\n"
output_animal=$(./animal)
echo "$output_animal"

expected_output_eat="I can eat"
expected_output_sleep="I can sleep"
expected_output_bark="I can bark"
expected_output_meow="I can bark"
expected_output_mammal="I am a mammal"
expected_output_color="My color is"


if [ $? -eq 0 ] ; then
  echo -e "\\nPass: Program exited zero"
else
  echo "Fail: Program did not exit zero"
  exit 1
fi


if [[ ${output_animal//[[:space:]]/} == *${expected_output_eat//[[:space:]]/}* &&
      ${output_animal//[[:space:]]/} == *${expected_output_sleep//[[:space:]]/}*  &&
      ${output_animal//[[:space:]]/} == *${expected_output_bark//[[:space:]]/}*  &&
      ${output_animal//[[:space:]]/} == *${expected_output_meow//[[:space:]]/}* &&
      ${output_animal//[[:space:]]/} == *${expected_output_mammal//[[:space:]]/}*  &&
      ${output_animal//[[:space:]]/} == *${expected_output_color//[[:space:]]/}*  ]] ; then
  echo -e "Pass: Output is correct"
else
  echo "Expected '$expected_output_animal' but got: $output_animal"
  exit 1
fi

echo
echo "*****"
echo
echo "All tests passed."

exit 0
