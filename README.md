# Installation

## LSP
Install the lua language server. For Fedora, download the latest release from

https://github.com/LuaLS/lua-language-server/releases/tag/3.14.0

```sh
tar --extract --file ~/Downloads/lua-language-server-$VERSION-linux-arm64.tar.gz -av -C ~/.local/lua-language-server
```

Add binary to path
```sh
export PATH="$PATH:$HOME/.local/lua-language-server/bin"
```
