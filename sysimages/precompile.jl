import PackageCompiler

PackageCompiler.create_sysimage(
  ["Plots"];
  sysimage_path="sysimages/sys_precompiled.so",
  precompile_execution_file="sysimages/statements_to_precompile.jl"
)
