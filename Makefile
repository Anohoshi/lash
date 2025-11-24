CC = clang
TARGET = lash
SRC_DIR = src
INC_DIR = include

SOURCES = $(shell find $(SRC_DIR) -type f -name "*.c")

$(TARGET): $(SOURCES)
	$(CC) -o $(TARGET) $(SOURCES) -I$(INC_DIR)

compile_commands:
	bear -- make

clean:
	rm -f $(TARGET) compile_commands.json

run: $(TARGET)
	./$(TARGET)

.PHONY: clean run
