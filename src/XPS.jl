module XPS

using AbInitioSoftwareBase: load, extension
using Comonicon: @cast, @main
using EquationsOfStateOfSolids.Collections: Parameters, EquationOfState
using Express: buildworkflow
using Pkg: @pkg_str
using PrettyPrint: pprint
using Serialization: deserialize
using SimpleWorkflow: run!

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

@cast function run(config)
    wfl = buildworkflow(config)
    run!(wfl)
end

include("Eos.jl")

@cast Eos

"""
my demo Comonicon CLI project.
"""
@main

end
