using TradingIndicators
using Documenter

DocMeta.setdocmeta!(TradingIndicators, :DocTestSetup, :(using TradingIndicators); recursive=true)

makedocs(;
    modules=[TradingIndicators],
    authors="loribao",
    repo="https://github.com/./TradingIndicators.jl/blob/{commit}{path}#{line}",
    sitename="TradingIndicators.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://..github.io/TradingIndicators.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/./TradingIndicators.jl",
    devbranch="main",
)
