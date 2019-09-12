module Lydia

using Unitful

abstract type AbstractTuning end

const Ω = 345u"m/s"

λ(f) = Ω / f

lerp(a, b, t) = (1 - t) * a + t * b

struct Note
    f   # frequency (Hz)
    λ   # wavelength (m)
end

Note(f) = Note(f, λ(f))

# include("./438/tuning.jl")
include("./440/tuning.jl")

end # module
