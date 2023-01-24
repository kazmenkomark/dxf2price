all: clean build
	@node node_modules/typescript/bin/tsc -p src/tsconfig.json
	@pkg build/dxf2price.js --targets latest-macos-x64 -o build/dxf2price
	@rm build/dxf2price.js

build:
	@mkdir -p build

clean:
	@rm -rf $(EXE_DIR)