"Subcommands of `xps` for the equation of state workflow."
module EOS

using AbInitioSoftwareBase: load
using Comonicon: @cast
using EquationOfStateRecipes
using EquationsOfStateOfSolids: Parameters, EquationOfStateOfSolids, EnergyEquation
using Express.EquationOfStateWorkflow: Scf, VcOptim, FitEos, buildjob
using Express.EquationOfStateWorkflow.Recipes: buildworkflow
import JLD2
using QuantumESPRESSOExpress
using SimpleWorkflows: run!, getresult
import Plots
# using ..ExpressCommands: @load_plugin

"""
Fit an equation of state from `cfgfile` for calculation `calc`.

# Args

- `calc`: the calculation type. Acceptable options are "scf" for self-consistent calculation and "optim" for structure optimizations.
- `cfgfile`: the file to be printed. Available extensions are `.jls`, `.json`, `.yaml`, `.yml` or `.toml`.
"""
@cast function fit(calc, cfgfile)
    calc = lowercase(calc)
    if calc == "scf"
        T = Scf
    elseif calc == "optim"
        T = VcOptim
    else
        throw(ArgumentError("unrecognized calculation type `$calc`!"))
    end
    job = buildjob(FitEos{T}(), cfgfile)
    run!(job)
    wait(job)
    display(something(getresult(job)))
end

"""
Plot an equation of state from `file` to file "out".

# Args

- `file`: a `.jld2` file that saves the equation of state.
"""
@cast function plot(file)
    data = JLD2.load(file)
    for (key, value) in data
        if value isa Parameters
            eos = EnergyEquation(value)
        elseif data isa EquationOfStateOfSolids
            eos = value
        else
            error("unsupported type $(typeof(value))!")
        end
        Plots.plot(eos)
        Plots.savefig("$key.pdf")
    end
end

"""
Run a `config` file, better with absolute path.

# Args

- `config`: the file to be run. Available extensions are `.json`, `.yaml`, `.yml` or `.toml`.
"""
@cast function run(config)
    # @load_plugin
    workflow = buildworkflow(config)
    dict = load(config)
    run!(workflow; filename = dict["save"]["status"])
    return workflow
end

end
