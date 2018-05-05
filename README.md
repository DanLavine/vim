Vim
---

# Download

To download this repo, you will want to place it under your `$HOME/.vim` folder:

```
git clone https://github.com/DanLavine/vim $HOME/.vim --recursive
```

# Installing plugins

To install the plugins, run `vim .`. Then once Vim starts, you can run: `:PluginInstall`.

# Setting up plugins

## YouCompleteMe

Follow the instructions for [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) to setup
this plugin based off your machine OS.

## Go Plpugins

For setting up [vim-go](https://github.com/fatih/vim-go) you will need to have
[Go](https://golang.org/dl/) installed. Then, you can setup all the dev binares with

```
:GoInstallBinaries
```
