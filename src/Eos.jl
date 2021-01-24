module Eos

using Comonicon: @cast
using EquationOfStateRecipes
using EquationsOfStateOfSolids: Parameters, EquationOfStateOfSolids, EnergyEquation
using Express.EosFitting: Scf, VcOptim, FitEos
using QuantumESPRESSOExpress.EosFitting
using Serialization: deserialize

import Plots

"""
Fit an equation of state from `cfgfile` for calculation `calc`.

# Arguments
- `calc`: the calculation type. Acceptable options are "scf" for self-consistent calculation and "optim" for structure optimizations.
- `cfgfile`: the file to be printed. Available extensions are `.jls`, `.json`, `.yaml`, `.yml` or `.toml`.
"""
@cast function fit(calc, cfgfile)
    calc = lowercase(calc)
    if calc == "scf"
        display(FitEos{Scf}()(cfgfile))
    elseif calc == "optim"
        display(FitEos{VcOptim}()(cfgfile))
    else
        error("unrecognized calculation type `$calc`!")
    end
end

"""
Plot an equation of state from `file` to file "out".

# Arguments
- `file`: a `.jls` file that saves the equation of state.

# Options
- `-o, --out <path>`: the file path that saves the plot. Available extensions are `.pdf`, `.png`.
"""
@cast function plot(file; out = replace(file, ".jls" => ".pdf"))
    data = deserialize(file)
    if data isa Parameters
        eos = EnergyEos(data)
    elseif data isa EquationOfStateOfSolids
        eos = data
    else
        error("unsupported type $(typeof(data))!")
    end
    Plots.plot(eos)
    Plots.savefig(out)
end

end
