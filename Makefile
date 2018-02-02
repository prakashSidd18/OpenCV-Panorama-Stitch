PROGNAME = panocv
CPP = g++
CFLAGS = `pkg-config --cflags opencv`
LIBS = `pkg-config --libs opencv`

% : %.cpp
	$(CPP) $(CFLAGS) -o $@ $< $(LIBS) -s

.PHONY: all

all: $(PROGNAME)
