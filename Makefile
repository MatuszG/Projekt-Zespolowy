SOURCES=$(wildcard src/sources/*.cpp)
OBJECTS=$(patsubst src/sources/%.cpp, src/objects/%.o, $(SOURCES))

build/main: $(OBJECTS)
	g++ $^ -o $@

$(OBJECTS): src/objects/%.o : src/sources/%.cpp src/headers/%.hpp
	g++ -c $< -o $@