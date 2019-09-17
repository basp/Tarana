module Tarana

# http://pages.mtu.edu/~suits/notefreqs.html
# https://en.wikipedia.org/wiki/Equal_temperament

using Unitful

import Base: *, /, +, -

export Note

export nextnote

c = 345u"m/s"
λ(f) = uconvert(u"m", c / f)

NOTES = [:A, :As, :B, :C, :Cs, :D, :Ds, :E, :F, :Fs, :G, :Gs]

CENT = 2^(1 // 1200)
CENT⁻¹ = inv(CENT)

struct Note
    f::typeof(1.0u"Hz")
    λ::typeof(1.0u"m")
end

Note(f) = Note(f, λ(f))

A4_440 = Note(440u"Hz")

*(n::Note, v::Number) = Note(n.f * v)
*(v::Number, n::Note) = Note(n.f * v)

/(n::Note, v::Number) = Note(n.f / v)
/(v::Number, n::Note) = Note(v / n.f)

+(n::Note, v::Int) = foldl((s, _) -> s * CENT, 1:v; init=n)
-(n::Note, v::Int) = foldl((s, _) -> s * CENT⁻¹, 1:v; init=n)

function nextnote(n)
    i = findfirst(isequal(n), NOTES)
    i = mod1(i + 1, length(NOTES))
    return NOTES[i]
end

end # module
