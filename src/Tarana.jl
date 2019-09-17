module Tarana

include("./pitchclasses.jl")

export
    Cff, C♭♭, Cf, C♭, C, Dff, D♭♭, Cs, C♯, Df, D♭, Css, C♯♯, D, Eff, E♭♭, Ds, D♯, 
    Ef, E♭, Fff, F♭♭, Dss, D♯♯, E, Ff, F♭, Es, E♯, F, Gff, G♭♭, Ess, E♯♯, Fs, F♯, 
    Gf, G♭, Fss, F♯♯, G, Aff, A♭♭, Gs, G♯, Af, A♭, Gss, G♯♯, A, Bff, B♭♭, As, A♯, 
    Bf, B♭, Ass, A♯♯, B, Bs, B♯, Bss, B♯♯

const 
    Dur = Rational
    Pitch = Tuple{PitchClass, Int}

const
    concertA = (A, 4)
    a440 = (A, 4)

abstract type Music end
abstract type Primitive <: Music end

struct Note <: Primitive
    dur::Dur
    p::Pitch
end

struct Rest <: Primitive
    dur::Dur
end

Base.show(io::IO, x::Note) = print(io, "Note($(x.dur), $(x.p))")
Base.show(io::IO, x::Rest) = print(io, "Rest($(x.dur))")

export Note, Rest

struct Sequence <: Music
    a::Vector{Music}
end

struct Parallel <: Music
    a::Vector{Music}
end

abstract type Control end

struct Modify <: Music
    c::Control
    a::Music
end

→(a...) = Sequence([a...])
⇉(a...) = Parallel([a...])

export Sequence, Parallel, Modify
export →, ⇉

"""
    abspitch(p)::Int

Returns an integer absolute pitch value in the range of 0..127.
"""
abspitch(p::Pitch) = abspitch(p...)
abspitch(pc::PitchClass, oct) = 12 * (oct + 1) + Int(pc)

# pitch(0) = (C,-1)
# pitch(60) = (C, 4)
# pitch(127) = (G, 9)

"""
    pitch(ap)::Pitch

Returns a `Pitch` as calculated from an absolute pitch value.
"""
pitch(ap) =
    let (oct, n) = divrem(ap, 12)
        ([C,Cs,D,Ds,E,F,Fs,G,Gs,A,As,B][n + 1], oct - 1)
    end

"""
    trans(i, p)::Pitch

Transposes a `Pitch` by an integer value.
"""
trans(i, p) = abspitch(p) + i |> pitch

export abspitch, pitch, trans

end # module
