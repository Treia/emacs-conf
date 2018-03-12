all: compile

clean:
	@rm -f init.elc myconf.el myconf.elc

compile: init.el myconf.org clean
	@emacs -Q --batch -l 'compile.el'

.PHONY: all clean compile
