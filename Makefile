CC = g++

animal: animal.cpp
	g++ animal.cpp -o animal

clean:
	rm animal

test: animal
	bash test.sh
