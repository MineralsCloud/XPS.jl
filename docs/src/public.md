```@meta
CurrentModule = ExpressCommands
```

# Commands

The main command is `xps`, by default it installs to [`JULIA_DEPOT_PATH/bin`](http://docs.julialang.org/en/v1/manual/environment-variables/#JULIA_DEPOT_PATH).

The first-order commands are

```
xps
├── show
└── run
└── graph
```

The usage are

```@docs
show
run
graph
```

You can always type

```shell
xps --help
```

to see the help information, or type

```shell
xps --version
```

to see the current version of `xps`.

## The equation of state workflow commands

The secondary commands are

```
xps eos
    ├── run
    └── plot
    └── fit
```

```@docs
ExpressCommands.EOS.run
ExpressCommands.EOS.fit
ExpressCommands.EOS.plot
```

## The phonon workflow commands

The secondary commands are

```
xps ph
    └── run
```

```@docs
ExpressCommands.Ph.run
```

## The QHA workflow commands

The secondary commands are

```
xps qha
    └── run
```

```@docs
ExpressCommands.QHA.run
```
