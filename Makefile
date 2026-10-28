# Compilador
CC = clang

# Flags de compilação
CFLAGS = -Wall -Wextra -std=c11

# Nome do executável
TARGET = servidor

# Arquivos fonte
SOURCES = servidor.c httpParser.c
HEADERS = httpParser.h

# Arquivos objeto (gerados automaticamente a partir dos .c)
OBJECTS = $(SOURCES:.c=.o)

# Regra padrão de compilação
all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) -o $@ $^
	@echo "Compilação concluída: ./$(TARGET)"

%.o: %.c $(HEADERS)
	$(CC) $(CFLAGS) -c $< -o $@

# Execução do servidor
run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(OBJECTS) $(TARGET)
	@echo "Arquivos limpos!"

# Indicar que essas regras não são arquivos
.PHONY: all run clean