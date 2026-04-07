.PHONY: all build server client copy clean

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

# Copy binaries to root
copy:
	cp server/target/release/duckai ./duckai-server
	cp client/duckai-client ./duckai-client

# Clean build artifacts
clean:
	rm -rfv server/target
	rm -fv duckai-server duckai-client
