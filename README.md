
# Quickstart

```bash
julia --project=. sysimages/precompile.jl # precompile sysimage: only first start

julia --project=. --sysimage=sysimages/sys_precompiled.so src/samples/pendulum.jl
```


# How to precompile

```bash
julia --project=. sysimages/precompile.jl
```


# Tutorials

- https://pkgdocs.julialang.org/v1/environments/
- https://julialang.github.io/PackageCompiler.jl/dev/examples/plots.html

# Also

- https://www.matecdev.com/posts/julia-package-compiler.html
- https://pkgdocs.julialang.org/v1/
