exclude = Makefile .git

.PHONY: all

all : install

install :
	rsync -av --exclude "$(exclude)" "$(PWD)/" "$(HOME)"/;
