CC = clang
TARGET = lash
SRC_DIR = src
INC_DIR = include

SOURCES = $(wildcard $(SRC_DIR)/*.c)

$(TARGET): $(SOURCES)
	$(CC) -o $(TARGET) $(SOURCES) -I$(INC_DIR)

clean:
	rm -f $(TARGET)

run: $(TARGET)
	./$(TARGET)

.PHONY: clean run
