module DFPT

using Comonicon: @cast
using Express.PhononWorkflow.Recipes: buildworkflow
using QuantumESPRESSOExpress.PhononWorkflow
using SimpleWorkflows: run!

"""
Run a `config` file, better with absolute path.

# Arguments
- `config`: the file to be run. Available extensions are `.json`, `.yaml`, `.yml` or `.toml`.
"""
@cast function run(config)
    workflow = buildworkflow(config)
    run!(workflow)
    return workflow
end

end
