import IJulia
import PackageCompiler
import TOML

const current_dir = @__DIR__
const project_path = abspath(current_dir * "/..")
const sysimage_path_tmp = abspath(current_dir * "/kernel.tmp.so")
const sysimage_path = abspath(current_dir * "/kernel.so")
const config_path = abspath(current_dir * "/config.toml")

const config = open(config_path) do file
  s = read(file, String)
  TOML.parse(s)
end
const packages = config["sysimage"]["packages"];
println(packages)

PackageCompiler.create_sysimage(
  packages;
  sysimage_path=sysimage_path_tmp
)
mv(sysimage_path_tmp, sysimage_path; force=true)

const kernel_name = "Julia (sysimage, threads)"
IJulia.installkernel(kernel_name, "--project=$project_path", "--sysimage=$sysimage_path", "--threads=auto")
