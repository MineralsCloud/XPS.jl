module Eos

using Comonicon: @cast
using Express.EosFitting: Scf, VcOptim, FitEos
using QuantumESPRESSOExpress.EosFitting

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

end
