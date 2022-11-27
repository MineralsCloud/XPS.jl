# Troubleshooting

This page collects some possible errors you may encounter and trick how to fix them.
If you have some questions about how to use this code, you are welcome to
[discuss with us](https://github.com/MineralsCloud/ExpressCommands.jl/discussions).

_If you have additional tips, please either
[report an issue](https://github.com/MineralsCloud/ExpressCommands.jl/issues/new) or
[submit a PR](https://github.com/MineralsCloud/ExpressCommands.jl/compare) with suggestions._

## Installation problems

### I cannot find the `julia` executable

Make sure you have Julia installed in your environment. Please download the latest
[stable version](https://julialang.org/downloads/#current_stable_release) for your platform.
If you are using a *nix system, the recommended way is to use
[`juliaup`](https://github.com/JuliaLang/juliaup). If you do not want to install `juliaup`
or you are using other platforms that Julia supports, download the corresponding binaries.
Then, create a symbolic link to the Julia executable. If the path is not in your `$PATH`
environment variable, export it to your `$PATH`.

Some clusters, like
[`Habanero`](https://confluence.columbia.edu/confluence/display/rcs/Habanero+HPC+Cluster+User+Documentation),
[`Comet`](https://www.sdsc.edu/support/user_guides/comet.html),
or [`Expanse`](https://www.sdsc.edu/services/hpc/expanse/index.html),
already have Julia installed as a module, you may
just `module load julia` to use it. If not, either install by yourself or contact your
administrator.

## Loading `ExpressCommands`

### Why is Julia compiling/loading modules so slow? What can I do?

First, we recommend you download the latest version of Julia. Usually, the newest version
has the best performance.

If you just want Julia to do a simple task and only once, you could start the Julia REPL with

```bash
julia --compile=min
```

to minimize compilation or

```bash
julia --optimize=0
```

to minimize optimizations, or just use both. Or you could make a system image
and run with

```bash
julia --sysimage custom-image.so
```

See [Fredrik Ekre's talk](https://youtu.be/IuwxE3m0_QQ?t=313) for details.

## Plotting

`ExpressCommands` uses [`Plots.jl`](https://github.com/JuliaPlots/Plots.jl) to plot the
equations of state, etc. However, on some operating systems, `Plots.jl` may not successfully
install, or some other strange issues may occur.

### Choosing backends

`Plots.jl` support different plotting backends
(see [its documentation](https://docs.juliaplots.org/stable/install/)),
some backends may work, and some may not. You could install all of them and select
the default plotting backend by
setting an environment variable in your `~/.julia/config/startup.jl` file (if the file does
not exist, create it). To do this, add e.g. the following line of code:
`ENV["PLOTS_DEFAULT_BACKEND"] = "PlotlyJS"`.

### "Could not connect to display" error

If you come across the following error:

```
qt.qpa.xcb: could not connect to display
qt.qpa.plugin: Could not load the Qt platform plugin "xcb" in "" even though it was found.
This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.

Available platform plugins are: linuxfb, minimal, offscreen, vnc, xcb.

connect: Connection refused
GKS: can't connect to GKS socket application

GKS: Open failed in routine OPEN_WS
GKS: GKS not in proper state. GKS must be either in the state WSOP or WSAC in routine ACTIVATE_WS
```

It may be caused by `Plots.plot` cannot find a display to show the figure. This could happen
on some remote clusters where you do not have access to displays.
But it should not be a problem since we save plotted figures to file systems.
Therefore, you could download the figure later.
