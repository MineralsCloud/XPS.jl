"Subcommands of `xps` for the phonon workflow."
module Ph

using AbInitioSoftwareBase: load
using Comonicon: @cast
using Express.PhononWorkflow.Recipes: buildworkflow
using QuantumESPRESSOExpress
using SimpleWorkflows: run!
# using ..ExpressCommands: @load_plugin

"""
Run a configuration file (with an absolute path will be better). It is equivalent to `xps run <file>`.

# Args

- `file`: the file to be run. Acceptable extensions are `.json`, `.yaml`, `.yml`, or `.toml`.
"""
@cast function run(file)
    # @load_plugin
    workflow = buildworkflow(file)
    dict = load(file)
    run!(workflow; filename = dict["save"]["status"])
    return workflow
end

end
