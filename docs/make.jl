using Documenter
using GiacControl

makedocs(
    sitename = "GiacControl.jl",
    modules = [GiacControl],
    repo = Documenter.Remotes.GitHub("JuliaGiac", "GiacControl.jl"),
    format = Documenter.HTML(
        canonical = "https://juliagiac.github.io/GiacControl.jl",
        # JuliaGiac identity, from JuliaGiac/site-kit (`sync.jl documenter docs`).
        assets = ["assets/juliagiac.css",
                  asset("assets/favicon.png", class = :ico, islocal = true)],
        footer = "GiacControl.jl is part of [JuliaGiac](https://juliagiac.github.io/), " *
                 "which brings [Giac](https://www-fourier.univ-grenoble-alpes.fr/~parisse/giac.html) " *
                 "(Bernard Parisse and Renée De Graeve) to Julia. " *
                 "Powered by [Documenter.jl](https://github.com/JuliaDocs/Documenter.jl).",
    ),
    pages = ["Home" => "index.md"],
)

if get(ENV, "CI", "") == "true"
    deploydocs(repo = "github.com/JuliaGiac/GiacControl.jl.git", devbranch = "main")
end
