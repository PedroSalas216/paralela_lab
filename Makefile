CC      = gcc
NVCC    = nvcc
WFLAGS  = -std=c11 -Wall -Wextra -g
LDFLAGS = -lm

TARGETS = tiny_md viz
SOURCES = $(shell echo *.c)
OBJECTS = core.o wtime.o

# Archivos específicos para la versión GPU
GPU_OBJECTS = gpu_core.o core.o $(OBJECTS)

all: tiny_md

viz: viz.o $(OBJECTS)
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS) -lGL -lGLU -lglut

tiny_md: tiny_md.o $(OBJECTS)
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS) -fopenmp

cuda: tiny_md_gpu

tiny_md_gpu: tiny_md.o $(GPU_OBJECTS)
	$(NVCC) -o $@ $^ $(LDFLAGS) -Xcompiler -fopenmp

%.o: %.c
	$(CC) $(WFLAGS) $(CPPFLAGS) $(CFLAGS) -c $<

# Compilar CUDA
%.o: %.cu
	$(NVCC) -c $< -o $@

clean:
	rm -f $(TARGETS) tiny_md_gpu *.o *.xyz *.log .depend

.depend: $(SOURCES)
	$(CC) -MM $^ > $@

-include .depend

.PHONY: clean all cuda
