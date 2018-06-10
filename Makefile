EXE = gshell
SRC = .
LDFLAGS = -ldflags="-s -w"

darwin:
	GOOS=darwin packr build -o $(EXE) $(LDFLAGS) $(SRC)

windows:
	GOOS=windows packr build -o $(EXE) $(LDFLAGS) $(SRC)

linux:
	GOOS=linux packr build -o $(EXE) $(LDFLAGS) $(SRC)

all: darwin windows linux

clean:
	rm -f $(EXE)