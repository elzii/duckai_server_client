.PHONY: all build server client copy clean tidy

# Env variable for TUI or REPL client
TYPE := $(CLIENT_TYPE)

# Default job
all: build

# Combined build job
build: server client copy

# Server build job
server:
	cd server && cargo build --release

# Client install job
client:
	@if ! command -v python3.11.11 >/dev/null 2>&1; then \
		echo "Error: python3.11.11 is not installed."; \
		exit 1; \
	fi
	python3.11.11 -m pip install -r client/requirements.txt

install: server client copy
	cp -v ./duckai-server /usr/local/bin/duckai-server
	cp -v ./duckai-client-tui /usr/local/bin/duckai


# Copy binaries to root
copy:
	cp server/target/release/duckai ./duckai-server
	cp client/duckai-client-repl ./duckai-client-repl
	cp client/duckai-client-tui ./duckai-client-tui

# Clean build artifacts
clean:
	rm -rfv server/target
	rm -fv duckai-server duckai-client
	
## Remove copied binaries
tidy:
	rm -fv duckai-server duckai-client
