# XPS

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://MineralsCloud.github.io/XPS.jl/stable)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://MineralsCloud.github.io/XPS.jl/dev)
[![Build Status](https://github.com/MineralsCloud/XPS.jl/workflows/CI/badge.svg)](https://github.com/MineralsCloud/XPS.jl/actions)
[![Build Status](https://travis-ci.com/MineralsCloud/XPS.jl.svg?branch=master)](https://travis-ci.com/MineralsCloud/XPS.jl)
[![Build Status](https://ci.appveyor.com/api/projects/status/github/singularitti/XPS.jl?svg=true)](https://ci.appveyor.com/project/singularitti/XPS-jl)
[![Build Status](https://cloud.drone.io/api/badges/MineralsCloud/XPS.jl/status.svg)](https://cloud.drone.io/MineralsCloud/XPS.jl)
[![Build Status](https://api.cirrus-ci.com/github/MineralsCloud/XPS.jl.svg)](https://cirrus-ci.com/github/MineralsCloud/XPS.jl)
[![Coverage](https://codecov.io/gh/MineralsCloud/XPS.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/MineralsCloud/XPS.jl)
[![Coverage](https://coveralls.io/repos/github/MineralsCloud/XPS.jl/badge.svg?branch=master)](https://coveralls.io/github/MineralsCloud/XPS.jl?branch=master)
[![Open in Visual Studio Code](https://open.vscode.dev/badges/open-in-vscode.svg)](https://open.vscode.dev/organization/repository)

## Installation
<p>
XPS is a &nbsp;
    <a href="https://julialang.org">
        <img src="https://julialang.org/favicon.ico" width="16em">
        Julia Language
    </a>
    &nbsp; package. To install XPS,
    please <a href="https://docs.julialang.org/en/v1/manual/getting-started/">open
    Julia's interactive session (known as REPL)</a> and press <kbd>]</kbd> key in the REPL to use the package mode, then type the following command
</p>

For stable release

```julia
pkg> add XPS
```

For current master

```julia
pkg> add XPS#master
```

### Command Line Interface

Add `~/.julia/bin` to your `PATH` to enable command line interface. Or run
`XPS.comonicon_install_path()` to install everything automatically.

Sometimes, you won't trigger the package `build` of Julia. You can install the command line interface
manually via `XPS.comonicon_install()`.

### Completions

If you are using ZSH, you can enable the auto-completion by `XPS.comonicon_install_path()`. Or add the `FPATH`
to your `.zshrc`

```sh
export FPATH="$HOME/.julia/completions:$FPATH"
```

if you do not have [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) installed, you need to add

```sh
autoload -Uz compinit && compinit
```

to your `.zshrc` as well.
