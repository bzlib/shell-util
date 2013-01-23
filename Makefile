BIN_DIR=$(HOME)/bin
SRC_DIR=$(shell pwd)/src
SCRIPTS=$(wildcard $(SRC_DIR)/*)
LINKS=$(patsubst $(SRC_DIR)/%, $(BIN_DIR)/%, $(SCRIPTS))

all: $(LINKS)

$(BIN_DIR)/%: $(SRC_DIR)/%
	rm -f $@
	ln -s $< $@

$(LINKS): $(BIN_DIR)

$(BIN_DIR):
	mkdir -p $@



