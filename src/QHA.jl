"Subcommands of `xps` for the QHA workflow."
module QHA

using Comonicon: @cast
using ExpressBase.Files: load
using Express.QuasiHarmonicApproxWorkflow.Recipes: buildworkflow
using SimpleWorkflows: run!

"""
Run a configuration file (with an absolute path will be better). It is equivalent to `xps run <file>`.

# Args

- `file`: the file to be run. Acceptable extensions are `.json`, `.yaml`, `.yml`, or `.toml`.
"""
@cast function run(file)
    workflow = buildworkflow(file)
    exec = run!(workflow)
    wait(exec)
    return workflow
end

end
