.PHONY: setup codegen watch clean test scan zip build

setup:
#	@npm install
	@yarn

codegen:
	@yarn build

watch:
	@yarn dev

clean:
	@yarn cache clean

test: scan

# https://gscan.ghost.org/
scan:
	@yarn lint
	@yarn test

zip: build

build: codegen
	@yarn zip