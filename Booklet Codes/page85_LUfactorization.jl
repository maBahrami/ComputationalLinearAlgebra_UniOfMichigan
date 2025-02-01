using LinearAlgebra

A = [6 -2 4 4; 
     3 -1 8 10;
     3 -1 2 8;
     3 -1 -1 20]


function LU_fact(M)
    n, m = size(M)
    n
    temp = copy(M)
    L = Array{Float64,2}(undef, n, 0)
    U = Array{Float64,2}(undef, 0, n)
    P = zeros(n, n) + I
    eps = 1e-16
    kappa = 10

    for k = 1:n
        C = temp[:, k]
        if maximum(abs.(C)) <= kappa * eps      # all zero condition
            C = 0 * C
            C[k] = 1.0
            R = temp[k:k, :]
            temp = temp - C * R
            L = [L C]
            U = [U; R]
        else
            nrow = argmax(abs.(C))          # if all not zero, swap to make the pivot the largest elemnt in column
            P[[k, nrow], :] = P[[nrow, k], :]
            temp[[k, nrow], :] = temp[[nrow, k], :]     # swaping
            if k > 1 L[[k, nrow], :] = L[[nrow, k], :] end

            C = temp[:, k]
            pivot = C[k]
            C = C / pivot
            R = temp[k:k, :]
            temp = temp - C * R

            L = [L C]
            U = [U; R]

        end
    end

    return L, U, P
end

L, U, P = LU_fact(A)

println("L: ", L)
println()
println("U: ", U)
println()
print("P: ", P)

