import Plots

# * Problem initial values
θ_0 = pi / 2
θ1_0 = 1

μ = 1/10
α = 1

# * Numerical solver params
n = 100001

# * ======
t = range(0, 100, length=n)
h = t[2] - t[1]

θ = zeros(n)
θ1 = zeros(n)
θ[1] = θ_0
θ1[1] = θ1_0

for i in 2:n
  θ[i] = θ[i-1] + h * θ1[i-1]
  θ1[i] = θ1[i-1] + h * (-μ * θ1[i-1] - α * sin(θ[i-1]))
end

p = Plots.plot(t, θ)
display(p)
readline()
