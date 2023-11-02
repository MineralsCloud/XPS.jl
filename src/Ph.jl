"Subcommands of `xps` for the phonon workflow."
module Ph

using Comonicon: @cast
using Express.PhononWorkflow.Recipes: Workflow, build
using QuantumESPRESSOExpress
using SimpleWorkflows: run!

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
