module Eos

using Comonicon: @cast
using EquationOfStateRecipes
using EquationsOfStateOfSolids.Collections: Parameters, EquationOfStateOfSolids, EnergyEOS
using Express.EosFitting: Scf, VcOptim, FitEos
using QuantumESPRESSOExpress.EosFitting
using Serialization: deserialize

import Plots

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

@cast function plot(file; out = replace(file, ".jls" => ".pdf"))
    data = deserialize(file)
    if data isa Parameters
        eos = EnergyEOS(data)
    elseif data isa EquationOfStateOfSolids
        eos = data
    else
        error("unsupported type $(typeof(data))!")
    end
    Plots.plot(eos)
    Plots.savefig(out)
end

end
