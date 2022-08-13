"Subcommands of `xps` for the QHA workflow."
module QHA

using AbInitioSoftwareBase: load
using Comonicon: @cast
using Express.QuasiHarmonicApproxWorkflow.Recipes: buildworkflow
using SimpleWorkflows: run!

"""
Run a configuration file (with an absolute path will be better). It is equivalent to `xps run <file>`.

# Args

- `file`: the file to be run. Acceptable extensions are `.json`, `.yaml`, `.yml`, or `.toml`.
"""
@cast function run(file)
    workflow = buildworkflow(file)
    dict = load(file)
    run!(workflow; filename = dict["save"]["status"])
    return workflow
end

end
