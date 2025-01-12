4 + 7.62

floor(-3.6)

trunc(-3.6)

cosd(180)
cos(pi)
cos(0)
asin(1)
pi/2

abs(-3.5)


x = 5
x == 6

f(x) = 5x + 2
g(x) = -3x + 5

#import Pkg
#Pkg.add("Plots")
using Plots
gr()

plot(f, -0.5, 0.5, aspect_ratio = 1, xlabel = "x", ylabel = "y")
plot!(g, -0.5, 0.5)


y1(x) = 2x + 1
y2(x) = 4 - 4x
plot([y1, y2], -5, 5)
# or simply:
# plot(y1, -5, 5, legend = false)
# plot!(y2, -5, 5)


a = [1 2 3 4 5]  
a'

b = collect(0:2:10) # the default of Julia is column vector
b'


A = ["abs", "asd", "gf"]
A[1] # one-index language

A[1][2]

X = ones(3, 4)
Y = zeros(5, 2)

size(X)

X .+ 3


M = randn(5, 3)

(nrow, ncol) = size(M)



using Plots
t = 0 : 0.1 : 100
a = 4
b = 7
x = (a + b)cos.(t) - b*cos.(((a/b) + 1)t)
y = (a + b)sin.(t) - b*sin.(((a/b) + 1)t)
plot(x, y, aspect_ratio = :equal)