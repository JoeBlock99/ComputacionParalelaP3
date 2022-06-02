all: pgm.o	houghBase

houghBase:	houghBase-compartida.cu pgm.o
	nvcc houghBase-compartida.cu pgm.o -o houghBase-compartida

pgm.o:	common/pgm.cpp
	g++ -c common/pgm.cpp -o ./pgm.o
