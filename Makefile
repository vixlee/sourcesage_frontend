.PHONY: all build node_modules test check selenium coverage eslint prettier

all: build

build: node_modules
	npm run build

coverage:
	npm run coverage

eslint: node_modules
	npm run eslint

prettier: node_modules
	npm run prettier

node_modules:
	npm install

clean:
	$(RM) -r node_modules
	$(RM) -r build
	$(RM) -r dist
	$(RM) -r package-lock.json
	$(RM) -r coverage
