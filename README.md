<h2 align="center">Nixvim</h2>

> This repository contains my Neovim configuration, which is declaratively written in Nix.

**Configuring/editing**

To start configuring, just add or modify the Nix files in `./config`.

If you add a new configuration file, remember to add it to the [`config/default.nix`](./config/default.nix) file.
Also remember to track it with git, so that `nix run .` will see the file.

**Testing your new configuration**

To test your configuration simply run the following command

```sh
$ nix run .
```
