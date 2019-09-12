module Lydia

using Unitful

export 
    Note, 
    Tuning

export 
    C₀,
    C♯₀,
    D₀,
    D♯₀,
    E₀,
    F₀,
    F♯₀,
    G₀,
    G♯₀,
    A₀,
    A♯₀,
    B₀

const Ω = 345u"m/s"

λ(f) = Ω / f

abstract type AbstractNote end

f(x::AbstractNote) = x.f
λ(x::AbstractNote) = x.λ

struct Note <: AbstractNote
    f   # frequency (Hz)
    λ   # wavelength (m)
end

Note(f) = Note(f * 1u"Hz", λ(f))

lerp(a::AbstractNote, b::AbstractNote, t) = 
    (1 - t) * a.f + t * b.f |> Note

abstract type AbstractTuning{T} end

struct Tuning{T} <: AbstractTuning{T}
    C₀ :: Note
    C♯₀ :: Note
    D₀ :: Note
    D♯₀ :: Note
    E₀ :: Note
    F₀ :: Note
    F♯₀ :: Note
    G₀ :: Note
    G♯₀ :: Note
    A₀ :: Note
    A♯₀ :: Note
    B₀ :: Note
end

C₀(t::AbstractTuning) = t.c₀
C♯₀(t::AbstractTuning) = t.C♯₀
D₀(t::AbstractTuning) = t.D₀
D♯₀(t::AbstractTuning) = t.D♯₀
E₀(t::AbstractTuning) = t.E₀
F₀(t::AbstractTuning) = t.F₀
F♯₀(t::AbstractTuning) = t.F♯₀
G₀(t::AbstractTuning) = t.G₀
G♯₀(t::AbstractTuning) = t.G♯₀
A₀(t::AbstractTuning) = t.A₀
A♯₀(t::AbstractTuning) = t.A♯₀
B₀(t::AbstractTuning) = t.B₀

include("./438/tuning.jl")
include("./440/tuning.jl")

end # module
