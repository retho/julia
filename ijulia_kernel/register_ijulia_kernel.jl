import IJulia

current_dir = @__DIR__
sysimage_path=abspath(current_dir * "/sys_ijulia_kernel.so")

kernel_name = "Julia (sysimage, threads)"
IJulia.installkernel(kernel_name, "--sysimage=$sysimage_path", "--threads=auto")
