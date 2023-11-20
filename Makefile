CC = g++

family: family.cpp
	g++ family.cpp -o family

close_family: close_family.cpp
	g++ close_family.cpp -o close_family

employee: employee.cpp
	g++ employee.cpp -o employee

clean:
	rm family close_family employee

test: family close_family employee
	bash test.sh
