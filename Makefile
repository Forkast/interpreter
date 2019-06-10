all:
	PATH="/home/students/inf/PUBLIC/MRJP/ghc-8.2.2/bin:$(PATH)" /home/students/inf/PUBLIC/MRJP/Stack/stack build
	PATH="/home/students/inf/PUBLIC/MRJP/ghc-8.2.2/bin:$(PATH)" /home/students/inf/PUBLIC/MRJP/Stack/stack install --local-bin-path="$(shell pwd)"
clean:
	-rm -f *.log *.aux *.hi *.o *.dvi interpreter
