import PackageCompiler

current_dir = @__DIR__
sysimage_path=abspath(current_dir * "/sys_ijulia_kernel.so")
precompile_execution_file=abspath(current_dir * "/../precompile_this.jl")

const pkgs = ["Plots"]
PackageCompiler.create_sysimage(
  pkgs;
  sysimage_path=sysimage_path,
  precompile_execution_file=precompile_execution_file
)
