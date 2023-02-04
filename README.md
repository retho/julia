
# Quickstart

```bash
cp ijulia_kernel/config.toml.example ijulia_kernel/config.toml
./rebuid_kernel.sh # precompile sysimage and register ijulia kernel
# optional activate julia sysimage in vscode: https://www.julia-vscode.org/docs/dev/userguide/compilesysimage/

./run.sh src/samples/pendulum.jl
./run.sh -e "using IJulia; notebook(;dir=\"src\")"
```


# IJulia kernel for notebooks with precompiled sysimage. Quickstart

```bash
cp ijulia_kernel/config.toml.example ijulia_kernel/config.toml
./rebuid_kernel.sh
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
