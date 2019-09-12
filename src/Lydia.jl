module Lydia

using Unitful

const Ω = 345u"m/s"

λ(f) = Ω / f

abstract type AbstractNote end

f(x::AbstractNote) = x.f
λ(x::AbstractNote) = x.λ

struct Note : AbstractNote
    f   # frequency (Hz)
    λ   # wavelength (m)
end

abstract type AbstractTuning end

function C₀(t::AbstractTuning):: AbstractNote
function C♯₀(t::AbstractTuning):: AbstractNote

function D₀ = Note(18.27)
function D♯₀ = Note(19.36)
function E₀ = Note(20.51)
function F₀ = Note(21.73)
function F♯₀ = Note(23.02)
function G₀ = Note(24.39)
function G♯₀ = Note(25.84)
function A₀ = Note(27.38)
function A♯₀ = Note(29.00)
function B₀ = Note(30.37)

lerp(a::Note, b::Note, t) = (1 - t) * a.f + t * b.f |> Note

Note(f) = Note(f, λ(f))

# include("./438/tuning.jl")
include("./440/tuning.jl")

end # module
