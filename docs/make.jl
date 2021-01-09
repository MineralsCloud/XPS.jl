using XPS
using Documenter

makedocs(;
    modules=[XPS],
    authors="Qi Zhang <singularitti@outlook.com>",
    repo="https://github.com/singularitti/XPS.jl/blob/{commit}{path}#L{line}",
    sitename="XPS.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://singularitti.github.io/XPS.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/singularitti/XPS.jl",
)
