module XPS

using AbInitioSoftwareBase: load, extension
using Comonicon: @cast, @main
using EquationsOfStateOfSolids: Parameters, EquationOfState
using Express: buildworkflow, loadconfig
using Pkg: @pkg_str
using PrettyPrint: pprint
using Serialization: deserialize
using SimpleWorkflow: run!

"""
Print the `file` in a pretty format.

# Arguments
- `file`: the file to be printed. Available extensions are `.jls`, `.json`, `.yaml`, `.yml` or `.toml`.
"""
@cast function print(file)
    ext = lowercase(extension(file))
    if ext == "jls"
        data = deserialize(file)
        if data isa Union{Parameters,EquationOfState}
            display(data)
        else
            pprint(data)
        end
    elseif ext in ("json", "yaml", "yml", "toml")
        data = load(file)
        pprint(data)
    else
        error("unsupported file extension `$ext`!")
    end
end

@cast function install(plugin)
    name = lowercase(plugin)
    if name == "qe"
        pkg"add https://github.com/MineralsCloud/QuantumESPRESSOExpress.jl.git"
    else
        error("unsupported plugin `$name`!")
    end
end

"""
Run a `config` file, better with absolute path.

# Arguments
- `config`: the file to be run. Available extensions are `.json`, `.yaml`, `.yml` or `.toml`.
"""
@cast function run(config)
    saveas = loadconfig(config).recover
    wfl = buildworkflow(config)
    run!(wfl, saveas)
end

include("Eos.jl")

@cast Eos

"""
The main command `xps`.
"""
@main

end
