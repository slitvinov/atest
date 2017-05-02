BIN = $(HOME)/bin  # where to install
install:; mkdir -p $(BIN) && cp atest ucmp udiff uscale $(BIN)
.PHONY: install
