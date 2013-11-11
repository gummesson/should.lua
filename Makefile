.PHONY: test fail docs

dev-nix:
	@echo "Installing the development dependencies..."
	@sudo luarocks install busted

dev-win:
	@echo "Installing the development dependencies..."
	@luarocks install busted

test:
	@echo "Running the tests..."
	@busted

fail:
	@echo "Testing the assertion failure output..."
	@busted -p _fail

docs:
	@echo "Generating the documentation..."
	@cat src/should.lua src/expect.lua src/util.lua > tmp/index.lua
	@docco tmp/index.lua
	@cp -r docs/ ../gh-pages/docs
