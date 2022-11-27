using ExpressCommands
using Documenter

DocMeta.setdocmeta!(ExpressCommands, :DocTestSetup, :(using ExpressCommands); recursive=true)

makedocs(;
    modules=[ExpressCommands],
    authors="singularitti <singularitti@outlook.com> and contributors",
    repo="https://github.com/MineralsCloud/ExpressCommands.jl/blob/{commit}{path}#{line}",
    sitename="ExpressCommands.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://MineralsCloud.github.io/ExpressCommands.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
        "Manual" => [
            "Installation guide" => "installation.md",
        ],
        "API Reference" => "public.md",
        "Developer Docs" => [
            "Contributing" => "developers/contributing.md",
            "Style Guide" => "developers/style.md",
        ],
        "Troubleshooting" => "troubleshooting.md",
    ],
)

deploydocs(;
    repo="github.com/MineralsCloud/ExpressCommands.jl",
    devbranch="main",
)
