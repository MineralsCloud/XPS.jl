using XPS
using Documenter

DocMeta.setdocmeta!(XPS, :DocTestSetup, :(using XPS); recursive=true)

makedocs(;
    modules=[XPS],
    authors="Qi Zhang <singularitti@outlook.com>",
    repo="https://github.com/MineralsCloud/XPS.jl/blob/{commit}{path}#{line}",
    sitename="XPS.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://MineralsCloud.github.io/XPS.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
        "Commands" => "commands.md",
    ],
)

deploydocs(;
    repo="github.com/MineralsCloud/XPS.jl",
)
