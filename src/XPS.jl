module XPS

using AbInitioSoftwareBase: load, extension
using Comonicon: @cast, @main
using EquationsOfStateOfSolids: Parameters, EquationOfStateOfSolids
using Pkg: add, rm, gc
using Preferences: @set_preferences!, @load_preference
using PrettyPrint: pprint
using Serialization: deserialize
using SimpleWorkflows: Workflow
using TikzGraphs
using TikzPictures

"""
Print the `file` in a pretty format.

# Arguments
- `file`: the file to be printed. Available extensions are `.jls`, `.json`, `.yaml`, `.yml` or `.toml`.
"""
@cast function print(file)
    ext = lowercase(extension(file))
    if ext == "jls"
        data = deserialize(file)
        if data isa Union{Parameters,EquationOfStateOfSolids}
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
        add("QuantumESPRESSOExpress")
    else
        error("unsupported plugin `$name`!")
    end
end

@cast function uninstall(plugin)
    name = lowercase(plugin)
    if name == "qe"
        rm("QuantumESPRESSOExpress")
        gc()
    else
        error("unsupported plugin `$name`!")
    end
end

@cast function use(plugin)
    name = lowercase(plugin)
    if name == "qe"
        @set_preferences!("plugin" => "Quantum ESPRESSO")
    else
        error("unsupported plugin `$name`!")
    end
end

function load_plugin()
    name = @load_preference("plugin")
    if name == "Quantum ESPRESSO"
        eval(:(using QuantumESPRESSOExpress))
    else
        error("unsupported plugin `$name`!")
    end
end

@cast function graph(file)
    ext = extension(file)
    workflow = deserialize(file)
    typeassert(workflow, Workflow)
    if ext == "jls"
        TikzGraphs.save(
            TikzPicture.PDF(replace(file, ".jls" => ".pdf")),
            TikzGraphs.plot(workflow.graph),
        )
    else
        error("unsupported extension `$ext`!")
    end
end

include("EOS.jl")
@cast EOS

include("DFPT.jl")
@cast DFPT

"""
The main command `xps`.
"""
@main

end
