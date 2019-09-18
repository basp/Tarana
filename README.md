# Tarana
Tarana is a library to compose music symbolically. It is heavily inspired by 
[Euterpea](https://github.com/Euterpea/) but tuned to be (hopefully) ideomatic 
and performant for Julia.

# Quick Start
```
julia> note = c♯(4, 1//2)
Note{Rational{Int64}}(1//2, (Tarana.PitchClass(:Cs), 4))

julia> ord(note.p)                                                                            61

julia> trans(1, note)
Note{Rational{Int64}}(1//2, (Tarana.PitchClass(:D), 4))
```