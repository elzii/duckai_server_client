# DuckDuckGO AI CLI 

> (vqd header workaround working as of of 🗓️ 2026-04-10)

## 🚀 Getting Started

- Make sure you have a python executable named `python3.11.11` in your PATH. It does not actually need to be this version. But it should be the non-system and non-primary homebrew version so that we dont need a virtualenv. You can use `pyenv` to manage this if you want.
- Clone this repo and run `make`
```
git clone https://github.com/elzii/duckai_server_client.git
cd duckai_server_client
make

# Will auto start/stop server on startup and exit/interupt/crash etc.
./duckai-client
```

## Client + Server 
- 🦀 **RUST** &nbsp;&nbsp;Server 
  - Depenencies: `argh`, `axum`, `tokio`, `serde`, `reqwest`
- 🐍 **PYTHON** Client
  - Depenencies: `python-toolkit`, `requests`


### 🐙 Forked Repo
- [0x676e67/duckai](https://github.com/0x676e67/duckai).
