#!/usr/bin/env bash

# * https://stackoverflow.com/questions/4824590/propagate-all-arguments-in-a-bash-shell-script
julia --project=. --sysimage=ijulia_kernel/kernel.so --threads=auto "$@"
