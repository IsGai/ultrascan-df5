#Compiler and Flags
CXX = g++
CXXFLAGS = -Wall -Wextra -std=c++11

#target exe
TARGET = main

#all objects 
OBJS = main.o Bus.o spg290.o

# Default target
all: $(TARGET)

# Link the files
$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) $^ -o $@

# compile main
main.o: main.cpp Bus.h spg290.h
	$(CXX) $(CXXFLAGS) -c $< -o $@

# compile spg290
spg290.o: spg290.cpp spg290.h Bus.h 
	$(CXX) $(CXXFLAGS) -c $< -o $@

# compile bus
Bus.o: Bus.cpp Bus.h 
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Clean build files
clean:
	rm -f $(OBJS) $(TARGET)

