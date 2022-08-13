using ExpressCommands
using Documenter

DocMeta.setdocmeta!(ExpressCommands, :DocTestSetup, :(using ExpressCommands); recursive=true)

makedocs(;
    modules=[ExpressCommands],
    authors="Reno <singularitti@outlook.com>",
    repo="https://github.com/MineralsCloud/ExpressCommands.jl/blob/{commit}{path}#{line}",
    sitename="ExpressCommands.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://MineralsCloud.github.io/ExpressCommands.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
        "Manual" => [
            "Installation guide" => "installation.md",
            "Contributing" => "contributing.md",
        ],
        "Library" => "public.md",
        "Troubleshooting" => "troubleshooting.md",
    ],
)

deploydocs(;
    repo="github.com/MineralsCloud/ExpressCommands.jl",
)
