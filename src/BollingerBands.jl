#https://pt.frwiki.wiki/wiki/Bandes_de_Bollinger
module BollingerBands

∑ᵢᵏ = sum
MA(V)= ∑ᵢᵏ(V)/length(V)
SMA(V, P) = [ K>=P && 0<P<=length(V) ? MA(V[K-P+1:K]) : NaN for K ∈ 1:length(V)]

using Statistics
BB(V,P,δ) = begin
    
    μ = SMA(V,P)
    σ = [K>=P && 0<P<=length(V) ? Statistics.std(V[K-P+1:K]) : NaN for K ∈ 1:length(V)]
    
    bh = μ .+ δ.*σ
    bl = μ .- δ.*σ
    (bh,μ,bl)
end

export SMA,BB
end