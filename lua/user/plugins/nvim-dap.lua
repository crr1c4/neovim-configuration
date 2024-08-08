return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio"
  },
  config = function()
    local dap = require("dap")
    local dapui = require("dapui")

    dapui.setup({})

    dap.listeners.before.attach.dapui_config = function() dapui.open() end
    dap.listeners.before.launch.dapui_config = function() dapui.open() end
    dap.listeners.before.event_terminated.dapui_config = function() dapui.close() end
    dap.listeners.before.event_exited.dapui_config = function() dapui.close() end

    dap.adapters.lldb = {
      type = 'executable',
      command = '/usr/bin/lldb-vscode',
      name = 'lldb'
    }

    -- dap.configurations.rust = {
    --   {
    --     -- ... the previous config goes here ...,
    --     initCommands = function()
    --       -- Find out where to look for the pretty printer Python module
    --       local rustc_sysroot = vim.fn.trim(vim.fn.system('rustc --print sysroot'))
    --
    --       local script_import = 'command script import "' .. rustc_sysroot .. '/lib/rustlib/etc/lldb_lookup.py"'
    --       local commands_file = rustc_sysroot .. '/lib/rustlib/etc/lldb_commands'
    --
    --       local commands = {}
    --       local file = io.open(commands_file, 'r')
    --       if file then
    --         for line in file:lines() do
    --           table.insert(commands, line)
    --         end
    --         file:close()
    --       end
    --       table.insert(commands, 1, script_import)
    --
    --       return commands
    --     end,
    --     -- ...,
    --   }
    -- }

    vim.keymap.set('n', '<leader>Db', dap.toggle_breakpoint, {});
    vim.keymap.set('n', '<leader>Dc', dap.continue, {});
    vim.keymap.set('n', '<leader>Dt', dap.terminate, {});
    vim.keymap.set('n', '<leader>Do', dap.step_over, {});
  end
}

-- https://www.youtube.com/watch?v=oYzZxi3SSnM
--
--
--dap.adapters.haskell = {
--  type = 'executable';
--  command = 'haskell-debug-adapter';
--  args = {'--hackage-version=0.0.33.0'};
-- }
-- dap.configurations.haskell = {
--   {
--     type = 'haskell',
--     request = 'launch',
--     name = 'Debug',
--     workspace = '${workspaceFolder}',
--     startup = "${file}",
--     stopOnEntry = true,
--     logFile = vim.fn.stdpath('data') .. '/haskell-dap.log',
--     logLevel = 'WARNING',
--     ghciEnv = vim.empty_dict(),
--     ghciPrompt = "λ: ",
--     -- Adjust the prompt to the prompt you see when you invoke the stack ghci command below
--     ghciInitialPrompt = "λ: ",
--     ghciCmd= "stack ghci --test --no-load --no-build --main-is TARGET --ghci-options -fprint-evld-with-show",
--   },
-- }
