module XPS

using AbInitioSoftwareBase: load, extension
using Comonicon: @cast, @main
using Pkg: @pkg_str
using Serialization: deserialize

@cast function print(file)
    ext = lowercase(extension(file))
    data = if ext == "jls"
        deserialize(file)
    elseif ext in ("json", "yaml", "yml", "toml")
        load(file)
    else
        error("unsupported file extension `$ext`!")
    end
    display(data)
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
my demo Comonicon CLI project.
"""
@main

end
