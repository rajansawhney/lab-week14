echo "Running tests..."
echo

echo "*****"
echo -e "Multi-level Inheritance : Family...\\n"
output_family=$(./family)
echo "$output_family"

if [ $? -eq 0 ] ; then
  echo -e "\\nPass: Program exited zero"
else
  echo "Fail: Program did not exit zero"
  exit 1
fi

echo "*****"
echo -e "Multiple Inheritance : Close Family...\\n"
output_close_family=$(./close_family)
echo "$output_close_family"

if [ $? -eq 0 ] ; then
  echo -e "\\nPass: Program exited zero"
else
  echo "Fail: Program did not exit zero"
  exit 1
fi

echo "*****"
echo -e "Inheritance and Access Specifiers : Employee...\\n"
output_employee=$(./employee)
echo "$output_employee"

if [ $? -eq 0 ] ; then
  echo -e "\\nPass: Program exited zero"
else
  echo "Fail: Program did not exit zero"
  exit 1
fi

expected_employee_salary="Salary"
expected_employee_bonus="Bonus"

if [[ ${output_employee//[[:space:]]/} == *${expected_employee_salary//[[:space:]]/}* &&
      ${output_employee//[[:space:]]/} == *${expected_employee_bonus//[[:space:]]/}*  ]] ; then
  echo -e "Pass: Output is correct"
else
  echo "Expected '$expected_employee_salary' and '$expected_employee_bonus' but got: $output_employee"
  exit 1
fi

echo
echo "*****"
echo
echo "All tests passed."

exit 0
