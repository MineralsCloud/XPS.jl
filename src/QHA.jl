module QHA

using AbInitioSoftwareBase: load
using Comonicon: @cast
using Express.QuasiHarmonicApproxWorkflow.Recipes: buildworkflow
using SimpleWorkflows: run!

"""
Run a `config` file, better with absolute path.

# Arguments
- `config`: the file to be run. Available extensions are `.json`, `.yaml`, `.yml` or `.toml`.
"""
@cast function run(config)
    workflow = buildworkflow(config)
    dict = load(config)
    run!(workflow; filename = dict["save"]["status"])
    return workflow
end

end
