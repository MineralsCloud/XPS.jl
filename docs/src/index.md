```@meta
CurrentModule = ExpressCommands
```

# ExpressCommands

Documentation for [ExpressCommands](https://github.com/MineralsCloud/ExpressCommands.jl).

See the [Index](@ref main-index) for the complete list of documented functions
and types.

The code is [hosted on GitHub](https://github.com/MineralsCloud/ExpressCommands.jl),
with some continuous integration services to test its validity.

This repository is created and maintained by [@singularitti](https://github.com/singularitti).
You are very welcome to contribute.

## Installation

The package can be installed with the Julia package manager.
From the Julia REPL, type `]` to enter the Pkg REPL mode and run:

```
pkg> add ExpressCommands
```

Or, equivalently, via the `Pkg` API:

```julia
julia> import Pkg; Pkg.add("ExpressCommands")
```

## Command Line Interface

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

## Documentation

- [**STABLE**](https://MineralsCloud.github.io/ExpressCommands.jl/stable) &mdash; **documentation of the most recently tagged version.**
- [**DEV**](https://MineralsCloud.github.io/ExpressCommands.jl/dev) &mdash; _documentation of the in-development version._

## Project Status

The package is tested against, and being developed for, Julia `1.6` and above on Linux,
macOS, and Windows.

## Questions and Contributions

Usage questions can be posted on
[our discussion page](https://github.com/MineralsCloud/ExpressCommands.jl/discussions).

Contributions are very welcome, as are feature requests and suggestions. Please open an
[issue](https://github.com/MineralsCloud/ExpressCommands.jl/issues)
if you encounter any problems. The [contributing](@ref) page has
a few guidelines that should be followed when opening pull requests and contributing code.

## Manual Outline

```@contents
Pages = [
    "installation.md",
    "contributing.md",
    "troubleshooting.md",
]
Depth = 3
```

## Library Outline

```@contents
Pages = ["public.md"]
```

### [Index](@id main-index)

```@index
Pages = ["public.md"]
```
