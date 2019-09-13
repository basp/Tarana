module Tarana

using Unitful

import Base: *, /, +, -
import Base: iterate

export Note, prevcent, nextcent

c = 345u"m/s"

λ(f) = uconvert(u"m", c / f)

C_MAJ = [:C, :D, :E, :F, :G, :A, :B]

# https://en.wikipedia.org/wiki/Equal_temperament
CENT = 2^(1 // 1200)
CENT⁻¹ = inv(CENT)

struct Note
    f::typeof(1.0u"Hz")
    λ::typeof(1.0u"m")
end

Note(f) = Note(f, λ(f))

*(n::Note, v::Number) = Note(n.f * v)
/(n::Note, v::Number) = Note(n.f / v)

+(n::Note, v::Int) = foldl((s, _) -> s * CENT, 1:v; init=n)
-(n::Note, v::Int) = foldl((s, _) -> s * CENT⁻¹, 1:v; init=n)

nextcent(n::Note) = Note(n.f * CENT)
prevcent(n::Note) = Note(n.f * CENT⁻¹)

# iterate(N::Note) = iterate(N, 0)
# iterate(rN::Iterators.Reverse{Note}) = iterate(rN, 0)

# iterate(N::Note, state) = nextcent(N), state
# iterate(rN::Iterators.Reverse{Note}, state) = prevcent(rN), state

end # module
