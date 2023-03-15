.PHONY: setup codegen watch clean test scan zip build

# choco install nodejs -y --version=18.15.0 --allow-downgrade --force
# brew install node -y
# node -v
# npm -v
setup:
	@npm install -g npm yarn
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

dependencies:
#	@npm i -g npm-check-updates
#   @ncu -u
#   @npm install
#	@yarn upgrade
	@yarn upgrade-interactive --latest