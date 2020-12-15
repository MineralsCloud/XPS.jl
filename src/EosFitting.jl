# module EosFitting

using Comonicon: @cast
using Express.EosFitting: Scf, VcOptim, FitEos

@cast function fiteos(calc, cfgfile)
    calc = lowercase(calc)
    if calc == "scf"
        return FitEos{Scf}()(cfgfile)
    elseif calc == "optim"
        return FitEos{VcOptim}()(cfgfile)
    else
        error("unrecognized calculation type `$calc`!")
    end
end

# end
