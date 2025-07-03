# Makefile for C++ Chess Game
CXX = g++
CXXFLAGS = -std=c++14 -Wall -Wextra -O2
TARGET = chess
SOURCES = main.cpp piece.cpp board.cpp game.cpp
OBJECTS = $(SOURCES:.cpp=.o)

# Default target
all: $(TARGET)

# Link the executable
$(TARGET): $(OBJECTS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJECTS)

# Compile source files to object files
%.o: %.cpp chess.h
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Clean build files
clean:
	rm -f $(OBJECTS) $(TARGET)

# Debug build
debug: CXXFLAGS += -g -DDEBUG
debug: $(TARGET)

# Run the game
run: $(TARGET)
	./$(TARGET)

# Install (optional - copies to /usr/local/bin)
install: $(TARGET)
	cp $(TARGET) /usr/local/bin/

.PHONY: all clean debug run install