local dap = require("dap")

-- Node.js Debug Adapter
dap.adapters.node2 = {
  type = "executable",
  command = "node",
  args = { os.getenv("HOME") .. "/.vscode-node-debug2/out/src/nodeDebug.js" },
}

dap.configurations.javascript = {
  {
    name = "Launch NestJS",
    type = "node2",
    request = "launch",
    program = "${workspaceFolder}/dist/main.js", -- Adjust if output is elsewhere
    cwd = "${workspaceFolder}",
    protocol = "inspector",
    sourceMaps = true,
    skipFiles = { "<node_internals>/**" },
  },
}

dap.configurations.typescript = {
  {
    name = "Debug NestJS",
    type = "node2",
    request = "launch",
    program = "${workspaceFolder}/src/main.ts",
    cwd = "${workspaceFolder}",
    runtimeExecutable = "node",
    runtimeArgs = { "--nolazy", "-r", "ts-node/register" },
    sourceMaps = true,
    outFiles = { "${workspaceFolder}/dist/**/*.js" },
    skipFiles = { "<node_internals>/**" },
  },
}
