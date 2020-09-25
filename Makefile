CXX = g++
CXXFLAGS = -ggdb -Wall -Werror -std=c++17

all: parent program

parent: parent.cpp fdstream.hpp
	$(CXX) $(CXXFLAGS) -o $@ $<
	
program: program.cpp fdstream.hpp
	$(CXX) $(CXXFLAGS) -o $@ $<
	
	
clean :
	rm -f parent program *.exe
	