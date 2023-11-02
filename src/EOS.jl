"Subcommands of `xps` for the equation of state workflow."
module EOS

using Comonicon: @cast
using EasyJobsBase: getresult
using EquationOfStateRecipes
using EquationsOfStateOfSolids: Parameters, EquationOfStateOfSolids, EnergyEquation
using Express.EquationOfStateWorkflow.Recipes: Workflow, build
using QuantumESPRESSOExpress
using Requires: @require
using SimpleWorkflows: run!
# using ..ExpressCommands: @load_plugin

"""
Fit an equation of state from a configuration `file` for calculation `calc`.

# Args

- `calc`: the calculation type. Acceptable options are "scf" for self-consistent calculation and "optim" for structure optimizations.
- `file`: the file which saves the raw data. Available extensions are `.jld2`, `.json`, `.yaml`, `.yml` or `.toml`.
"""
function __init__()
    @require Plots = "91a5bcdd-55d7-5caf-9e0b-520d859cae80" begin
        """
        Plot some equations of state from `file`.

        # Args

        - `file`: a `.jld2` file that saves the equations of state.
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
    end
end

"""
Run a configuration file (with an absolute path will be better). It is equivalent to `xps run <file>`.

# Args

- `file`: the file to be run. Acceptable extensions are `.json`, `.yaml`, `.yml`, or `.toml`.
"""
@cast function run(file)
    workflow = build(Workflow, file)
    exec = run!(workflow)
    wait(exec)
    return workflow
end

end
