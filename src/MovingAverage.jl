module MovingAverage

∑ᵢᵏ = sum
MA(V) = ∑ᵢᵏ(V)/length(V)
SMA(V, P) = [ K>=P && 0<P<=length(V) ? MA(V[K-P+1:K]) : missing for K ∈ 1:length(V)]

export SMA
end