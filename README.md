
# Quickstart

```bash
julia --project=. sysimages/precompile.jl # precompile sysimage: only first start
# optional activate julia sysimage in vscode: https://www.julia-vscode.org/docs/dev/userguide/compilesysimage/

./run.sh src/samples/pendulum.jl
```


# How to precompile

```bash
julia --project=. sysimages/precompile.jl
```


# IJulia kernel for notebooks Quickstart

```bash
cp ijulia_kernel/statements_to_precompile.jl.sample ijulia_kernel/statements_to_precompile.jl
julia --project=. ijulia_kernel/rebuild_ijulia_kernel_sysimage.jl
julia --project=. ijulia_kernel/create_ijulia_kernel.jl # * only first time
```

- https://julialang.github.io/IJulia.jl/stable/manual/installation/#Installing-additional-Julia-kernels
  + https://stackoverflow.com/questions/64054521/add-julia-kernel-with-flag-to-jupyterlab
  + https://discourse.julialang.org/t/tool-sysimage-creator-for-ijulia-users/61229
  + https://stackoverflow.com/questions/42635310/remove-kernel-on-jupyter-notebook

# Tutorials

- https://pkgdocs.julialang.org/v1/environments/
- https://julialang.github.io/PackageCompiler.jl/dev/examples/plots.html
- https://www.julia-vscode.org/docs/dev/userguide/compilesysimage/

# Also

- https://www.matecdev.com/posts/julia-package-compiler.html
- https://pkgdocs.julialang.org/v1/
