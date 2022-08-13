module Ph

using AbInitioSoftwareBase: load
using Comonicon: @cast
using Express.PhononWorkflow.Recipes: buildworkflow
using QuantumESPRESSOExpress
using SimpleWorkflows: run!
# using ..ExpressCommands: @load_plugin

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
