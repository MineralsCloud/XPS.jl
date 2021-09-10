module Phonon

using Comonicon: @cast
using Express.PhononWorkflow.Recipes: buildworkflow
using QuantumESPRESSOExpress
using SimpleWorkflows: run!
using ..ExpressCommands: @load_plugin

"""
Run a `config` file, better with absolute path.

# Arguments
- `config`: the file to be run. Available extensions are `.json`, `.yaml`, `.yml` or `.toml`.
"""
@cast function run(config)
    @load_plugin
    workflow = buildworkflow(config)
    run!(workflow)
    return workflow
end

end
