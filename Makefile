CC=swiftc
NAME=NoMenuBar

app: src/main.swift src/Info.plist
	mkdir -p build/$(NAME).app/Contents/MacOS
	$(CC) src/main.swift -o build/$(NAME).app/Contents/MacOS/$(NAME)
	cp src/Info.plist build/$(NAME).app/Contents/

executable: src/main.swift
	mkdir -p build/
	$(CC) src/main.swift -o build/$(NAME)

install: app
	cp -r build/$(NAME).app /Applications/
