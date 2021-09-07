# Commands

```@meta
CurrentModule = XPS
```

The main command is `xps`, by default it installs to [`JULIA_DEPOT_PATH/bin`](http://docs.julialang.org/en/v1/manual/environment-variables/#JULIA_DEPOT_PATH).

The first-order commands are

```
xps
├── print
└── run
```

The usage are

```@docs
print
run
```

And the secondary commands are

```
xps eos
    ├── fit
    └── plot
```

```@docs
XPS.EOS.fit
XPS.EOS.plot
```
