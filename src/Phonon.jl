module Phonon

using AbInitioSoftwareBase: load
using Comonicon: @cast
using Express.PhononWorkflow.Recipes: buildworkflow
using QuantumESPRESSOExpress
using SimpleWorkflows: run!
# using ..ExpressCommands: @load_plugin

"""
Run a `config` file, better with absolute path.

# Arguments
- `config`: the file to be run. Available extensions are `.json`, `.yaml`, `.yml` or `.toml`.
"""
@cast function run(config)
    # @load_plugin
    workflow = buildworkflow(config)
    dict = load(config)
    run!(workflow; saveas = dict["save"]["status"])
    return workflow
end

end
