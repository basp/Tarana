module Tarana

struct PitchClass
    s::Symbol
end

const Pitch = Tuple{PitchClass, Integer}

struct Note{T <: Number} 
    dur::T
    p::Pitch
end

struct Rest{T <: Number}
    dur::T
end

pc = PitchClass

const
    Cff = pc(:Cff)
    Cf  = pc(:Cf)
    C   = pc(:C)
    Cs  = pc(:Cs)
    Css = pc(:Css)
    Dff = pc(:Dff)
    Df  = pc(:Df)
    D   = pc(:D)
    Ds  = pc(:Ds)
    Dss = pc(:Dss)
    Eff = pc(:Eff)
    Ef  = pc(:Ef)
    E   = pc(:E)
    Es  = pc(:Es)
    Ess = pc(:Ess)
    Fff = pc(:Fff)
    Ff  = pc(:Ff)
    F   = pc(:F)
    Fs  = pc(:Fs)
    Fss = pc(:Fss)
    Gff = pc(:Gff)
    Gf  = pc(:Gf)
    G   = pc(:G)
    Gs  = pc(:Gs)
    Gss = pc(:Gss)
    Aff = pc(:Aff)
    Af  = pc(:Af)
    A   = pc(:A)
    As  = pc(:As)
    Ass = pc(:Ass)
    Bff = pc(:Bff)
    Bf  = pc(:Bf)
    B   = pc(:B)
    Bs  = pc(:Bs)
    Bss = pc(:Bss)

const
    C♭♭ = Cff
    C♭ = Cf
    C♯ = Cs
    C♯♯ = Css
    D♭♭ = Dff
    D♭ = Df
    D♯ = Ds
    D♯♯ = Dss
    E♭♭ = Eff
    E♭ = Ef
    E♯ = Es
    E♯♯ = Ess
    F♭♭ = Fff
    F♭ = Ff
    F♯ = Fs
    F♯♯ = Fss
    G♭♭ = Gff
    G♭ = Gf
    G♯ = Gs
    G♯♯ = Gss
    A♭♭ = Aff
    A♭ = Af
    A♯ = As
    A♯♯ = Ass
    B♭♭ = Bff
    B♭ = Bf
    B♯ = Bs
    B♯♯ = Bss

cff(o, d) = Note(d, (Cff, o))
cf(o, d)  = Note(d, (Cf, o))
c(o, d)   = Note(d, (C, o))
cs(o, d)  = Note(d, (Cs, o))
css(o, d) = Note(d, (Css, o))
dff(o, d) = Note(d, (Dff, o))
df(o, d)  = Note(d, (Df, o))
d(o, d)   = Note(d, (D, o))
ds(o, d)  = Note(d, (Ds, o))
dss(o, d) = Note(d, (Dss, o))
eff(o, d) = Note(d, (Eff, o))
ef(o, d)  = Note(d, (Ef, o))
e(o, d)   = Note(d, (E, o))
es(o, d)  = Note(d, (Es, o))
ess(o, d) = Note(d, (Ess, o))
fff(o, d) = Note(d, (Fff, o))
ff(o, d)  = Note(d, (Ff, o))
f(o, d)   = Note(d, (F, o))
fs(o, d)  = Note(d, (Fs, o))
fss(o, d) = Note(d, (Fss, o))
gff(o, d) = Note(d, (Gff, o))
gf(o, d)  = Note(d, (Gf, o))
g(o, d)   = Note(d, (G, o))
gs(o, d)  = Note(d, (Gs, o))
gss(o, d) = Note(d, (Gss, o))
aff(o, d) = Note(d, (Aff, o))
af(o, d)  = Note(d, (Af, o))
a(o, d)   = Note(d, (A, o))
as(o, d)  = Note(d, (As, o))
ass(o, d) = Note(d, (Ass, o))
bff(o, d) = Note(d, (Bff, o))
bf(o, d)  = Note(d, (Bf, o))
b(o, d)   = Note(d, (B, o))
bs(o, d)  = Note(d, (Bs, o))
bss(o, d) = Note(d, (Bss, o))

c♭♭ = cff
c♭ = cf
c♯ = cs
c♯♯ = css
d♭♭ = dff
d♭ = df
d♯ = ds
d♯♯ = dss
e♭♭ = eff
e♭ = ef
e♯ = es
e♯♯ = ess
f♭♭ = fff
f♭ = ff
f♯ = fs
f♯♯ = fss
g♭♭ = gff
g♭ = gf
g♯ = gs
g♯♯ = gss
a♭♭ = aff
a♭ = af
a♯ = as
a♯♯ = ass
b♭♭ = bff
b♭ = bf
b♯ = bs
b♯♯ = bss

export 
    Note,
    Rest

export
    Cff, Cf, C, Cs, Css,
    Dff, Df, D, Ds, Dss,
    Eff, Ef, E, Es, Ess,
    Fff, Ff, F, Fs, Fss,
    Gff, Gf, G, Gs, Gss,
    Aff, Af, A, As, Ass,
    Bff, Bf, B, Bs, Bss

export
    C♭♭, C♭, C♯, C♯♯,
    D♭♭, D♭, D♯, D♯♯,
    E♭♭, E♭, E♯, E♯♯,
    F♭♭, F♭, F♯, F♯♯,
    G♭♭, G♭, G♯, G♯♯,
    A♭♭, A♭, A♯, A♯♯,
    B♭♭, B♭, B♯, B♯♯

export 
    cff, cf, c, cs, css,
    dff, df, d, ds, dss,
    eff, ef, e, es, ess,
    fff, ff, f, fs, fss,
    gff, gf, g, gs, gss,
    aff, af, a, as, ass,
    bff, bf, b, bs, bss

export
    c♭♭, c♭, c♯♯, c♯,
    d♭♭, d♭, d♯♯, d♯,
    e♭♭, e♭, e♯♯, e♯,
    f♭♭, f♭, f♯♯, f♯,
    g♭♭, g♭, g♯♯, g♯,
    a♭♭, a♭, a♯♯, a♯,
    b♭♭, b♭, b♯♯, b♯

const pctoint = Dict(
    Cff => -2, Cf => -1, C =>  0, Cs =>  1, Css =>  2,
    Dff =>  0, Df =>  1, D =>  2, Ds =>  3, Dss =>  4,
    Eff =>  2, Ef =>  3, E =>  4, Es =>  5, Ess =>  6,
    Fff =>  3, Ff =>  4, F =>  5, Fs =>  6, Fss =>  7,
    Gff =>  5, Gf =>  6, G =>  7, Gs =>  8, Gss =>  9,
    Aff =>  7, Af =>  8, A =>  9, As => 10, Ass => 11,
    Bff =>  9, Bf => 10, B => 11, Bs => 12, Bss => 13)

const pctostr = Dict(
    Cff => "C♭♭", Cf => "C♭", C => "C", Cs => "C♯", Css => "C♯♯",
    Dff => "D♭♭", Df => "D♭", D => "D", Ds => "D♯", Dss => "D♯♯",
    Eff => "E♭♭", Ef => "E♭", E => "E", Es => "E♯", Ess => "E♯♯",
    Fff => "F♭♭", Ff => "F♭", F => "F", Fs => "F♯", Fss => "F♯♯",
    Gff => "G♭♭", Gf => "G♭", G => "G", Gs => "G♯", Gss => "G♯♯",
    Aff => "A♭♭", Af => "A♭", A => "A", As => "A♯", Ass => "D♯♯",
    Bff => "B♭♭", Bf => "B♭", B => "B", Bs => "B♯", Bss => "B♯♯")

const eqtemp = [C, C♯, D, D♯, E, F, F♯, G, G♯, A, A♯, B]

Base.show(io::IO, x::PitchClass) = print(io, pctostr[x])

abspitch(p) = abspitch(p...)
abspitch(pc, oct) = 12 * (oct + 1) + pctoint[pc]

pitch(ap) =
    let (oct, n) = divrem(ap, 12)
        (eqtemp[n + 1], oct - 1)
    end

trans(i, p) = abspitch(p) + i |> pitch

export
    abspitch,
    pitch,
    trans

end # module
