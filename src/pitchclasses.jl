abstract type AbstractPitchClass end

primitive type PitchClass <: AbstractPitchClass (sizeof(Int) * 8) end

PitchClass(x::Int) = reinterpret(PitchClass, x)
Int(x::PitchClass) = reinterpret(Int, x)

const
    Cff = PitchClass(-2)
    C♭♭ = Cff
    Cf = PitchClass(-1)
    C♭ = Cf
    C = PitchClass(0)
    Dff = C
    D♭♭ = C
    Cs = PitchClass(1)
    C♯ = Cs
    Df = Cs
    D♭ = Cs
    D  = PitchClass(2)
    Css = D
    C♯♯ = D
    Eff = D
    E♭♭ = D
    Ds = PitchClass(3)
    D♯ = Ds
    Ef = Ds
    E♭ = Ds
    Fff = Ds
    F♭♭ = Ds
    E = PitchClass(4)
    Dss = E
    D♯♯ = E
    Ff = E
    F♭ = E
    F = PitchClass(5)
    Es = F
    E♯ = F
    Gff = F
    G♭♭ = F
    Fs = PitchClass(6)
    F♯ = Fs
    Ess = Fs
    E♯♯ = Fs
    Gf = Fs
    G♭ = Fs
    G = PitchClass(7)
    Fss = G
    F♯♯ = G
    Aff = G
    A♭♭ = G
    Af = PitchClass(8)
    A♭ = Af
    Gs = Af
    G♯ = Af
    A = PitchClass(9)
    Gss = A
    G♯♯ = A
    Bff = A
    B♭♭ = A
    As = PitchClass(10)
    A♯ = As
    Bf = As
    B♭ = As
    B = PitchClass(11)
    Ass = B
    A♯♯ = B
    Bs = PitchClass(12)
    B♯ = Bs
    Bss = PitchClass(13)
    B♯♯ = Bss

Base.typemin(::Type{PitchClass}) = -2
Base.typemax(::Type{PitchClass}) = 13

const names = Dict(
    C♭♭ => "C♭♭",
    C♭ => "C♭",
    C => "C",
    C♯ => "C♯",
    D  => "D",
    D♯ => "D♯",
    E => "E",
    F => "F",
    F♯ => "F♯",
    G => "G",
    A♭ => "A♭",
    A => "A",
    A♯ => "A♯",
    B => "B",
    B♯ => "B♯",
    B♯♯ => "B♯♯")

Base.:+(pc::PitchClass, x::Int) = Int(pc) + x |> PitchClass
Base.:-(pc::PitchClass, x::Int) = Int(pc) - x |> PitchClass

Base.show(io::IO, x::PitchClass) = print(io, names[x])