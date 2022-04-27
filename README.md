# ExpressCommands

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://MineralsCloud.github.io/ExpressCommands.jl/stable)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://MineralsCloud.github.io/ExpressCommands.jl/dev)
[![Build Status](https://github.com/MineralsCloud/ExpressCommands.jl/workflows/CI/badge.svg)](https://github.com/MineralsCloud/ExpressCommands.jl/actions)
[![Build Status](https://ci.appveyor.com/api/projects/status/github/MineralsCloud/ExpressCommands.jl?svg=true)](https://ci.appveyor.com/project/singularitti/ExpressCommands-jl)
[![Build Status](https://api.cirrus-ci.com/github/MineralsCloud/ExpressCommands.jl.svg)](https://cirrus-ci.com/github/MineralsCloud/ExpressCommands.jl)
[![pipeline status](https://gitlab.com/singularitti/ExpressCommands.jl/badges/master/pipeline.svg)](https://gitlab.com/singularitti/ExpressCommands.jl/-/pipelines)
[![Coverage](https://codecov.io/gh/MineralsCloud/ExpressCommands.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/MineralsCloud/ExpressCommands.jl)
[![GitHub license](https://img.shields.io/github/license/MineralsCloud/ExpressCommands.jl)](https://github.com/MineralsCloud/ExpressCommands.jl/blob/master/LICENSE)

## Installation

<p>
ExpressCommands is a &nbsp;
    <a href="https://julialang.org">
        <img src="https://raw.githubusercontent.com/JuliaLang/julia/41781b1/doc/src/assets/julia.ico" width="16em">
        Julia Language
    </a>
    &nbsp; package. To install ExpressCommands,
    please <a href="https://docs.julialang.org/en/v1/manual/getting-started/">open
    Julia's interactive session (known as REPL)</a> and press <kbd>]</kbd> key in the REPL to use the package mode, then type the following command
</p>

For stable release

```julia
pkg> add ExpressCommands
```

For current master

```julia
pkg> add ExpressCommands#master
```

### Command Line Interface

Add `~/.julia/bin` to your `PATH` to enable command line interface. Or run
`ExpressCommands.comonicon_install_path()` to install everything automatically.

Sometimes, you won't trigger the package `build` of Julia. You can install the command line interface
manually via `ExpressCommands.comonicon_install()`.

### Completions

If you are using ZSH, you can enable the auto-completion by `ExpressCommands.comonicon_install_path()`. Or add the `FPATH`
to your `.zshrc`

```sh
export FPATH="$HOME/.julia/completions:$FPATH"
```

if you do not have [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) installed, you need to add

```sh
autoload -Uz compinit && compinit
```

to your `.zshrc` as well.
