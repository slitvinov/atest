# where to install
BIN = $(HOME)/bin

install:; mkdir -p $(BIN) && cp atest ucmp udiff $(BIN)
