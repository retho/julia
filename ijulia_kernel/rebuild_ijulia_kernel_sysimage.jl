import PackageCompiler

current_dir = @__DIR__
sysimage_path=abspath(current_dir * "/sys_ijulia_kernel.so")
precompile_execution_file=abspath(current_dir * "/statements_to_precompile.jl")

const pkgs = ["Plots"]
PackageCompiler.create_sysimage(
  pkgs;
  sysimage_path=sysimage_path,
  precompile_execution_file=precompile_execution_file
)
