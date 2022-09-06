# ExpressCommands

|                                 **Documentation**                                  |                                                                                                 **Build Status**                                                                                                 |                  **LICENSE**                  |
| :--------------------------------------------------------------------------------: | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------: | :-------------------------------------------: |
| [![Stable][docs-stable-img]][docs-stable-url] [![Dev][docs-dev-img]][docs-dev-url] | [![Build Status][gha-img]][gha-url] [![Build Status][appveyor-img]][appveyor-url] [![Build Status][cirrus-img]][cirrus-url] [![pipeline status][gitlab-img]][gitlab-url] [![Coverage][codecov-img]][codecov-url] | [![GitHub license][license-img]][license-url] |

[docs-stable-img]: https://img.shields.io/badge/docs-stable-blue.svg
[docs-stable-url]: https://MineralsCloud.github.io/ExpressCommands.jl/stable
[docs-dev-img]: https://img.shields.io/badge/docs-dev-blue.svg
[docs-dev-url]: https://MineralsCloud.github.io/ExpressCommands.jl/dev
[gha-img]: https://github.com/MineralsCloud/ExpressCommands.jl/workflows/CI/badge.svg
[gha-url]: https://github.com/MineralsCloud/ExpressCommands.jl/actions
[appveyor-img]: https://ci.appveyor.com/api/projects/status/github/MineralsCloud/ExpressCommands.jl?svg=true
[appveyor-url]: https://ci.appveyor.com/project/singularitti/ExpressCommands-jl
[cirrus-img]: https://api.cirrus-ci.com/github/MineralsCloud/ExpressCommands.jl.svg
[cirrus-url]: https://cirrus-ci.com/github/MineralsCloud/ExpressCommands.jl
[gitlab-img]: https://gitlab.com/singularitti/ExpressCommands.jl/badges/master/pipeline.svg
[gitlab-url]: https://gitlab.com/singularitti/ExpressCommands.jl/-/pipelines
[codecov-img]: https://codecov.io/gh/MineralsCloud/ExpressCommands.jl/branch/master/graph/badge.svg
[codecov-url]: https://codecov.io/gh/MineralsCloud/ExpressCommands.jl
[license-img]: https://img.shields.io/github/license/MineralsCloud/ExpressCommands.jl
[license-url]: https://github.com/MineralsCloud/ExpressCommands.jl/blob/master/LICENSE

The code is [hosted on GitHub](https://github.com/MineralsCloud/ExpressCommands.jl),
with some continuous integration services to test its validity.

This repository is created and maintained by [@singularitti](https://github.com/singularitti).
You are very welcome to contribute.

Please [cite this package](https://doi.org/10.1016/j.cpc.2022.108515) as:

Q. Zhang, C. Gu, J. Zhuang et al., `express`: extensible, high-level workflows for swifter *ab initio* materials modeling, *Computer Physics Communications*, 108515, doi: https://doi.org/10.1016/j.cpc.2022.108515.

The BibTeX format is: 

```bibtex
@article{ZHANG2022108515,
  title    = {express: extensible, high-level workflows for swifter ab initio materials modeling},
  journal  = {Computer Physics Communications},
  pages    = {108515},
  year     = {2022},
  issn     = {0010-4655},
  doi      = {https://doi.org/10.1016/j.cpc.2022.108515},
  url      = {https://www.sciencedirect.com/science/article/pii/S001046552200234X},
  author   = {Qi Zhang and Chaoxuan Gu and Jingyi Zhuang and Renata M. Wentzcovitch},
  keywords = {automation, workflow, high-level, high-throughput, data lineage}
}
```

We also have an [arXiv prepint](https://arxiv.org/abs/2109.11724).

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

- [**STABLE**][docs-stable-url] &mdash; **documentation of the most recently tagged version.**
- [**DEV**][docs-dev-url] &mdash; _documentation of the in-development version._

## Project Status

The package is tested against, and being developed for, Julia `1.6` and above on Linux,
macOS, and Windows.

## Questions and Contributions

Usage questions can be posted on [our discussion page][discussions-url].

Contributions are very welcome, as are feature requests and suggestions. Please open an
[issue][issues-url] if you encounter any problems. The [contributing](@ref) page has
a few guidelines that should be followed when opening pull requests and contributing code.

[discussions-url]: https://github.com/MineralsCloud/ExpressCommands.jl/discussions
[issues-url]: https://github.com/MineralsCloud/ExpressCommands.jl/issues
[contrib-url]: https://github.com/MineralsCloud/ExpressCommands.jl/discussions
