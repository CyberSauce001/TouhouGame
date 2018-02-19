CFLAGS = -I ./include
##LIB    = ./libggfonts.so
LFLAGS = -lrt -lX11 -lGLU -lGL -pthread -lm #-lXrandr

all: Touhou

Touhou: Touhou.cpp log.cpp timers.cpp
	g++ $(CFLAGS) Touhou.cpp log.cpp timers.cpp libggfonts.a -Wall -Wextra $(LFLAGS) -otouhou

clean:
	rm -f touhou
	rm -f *.o

