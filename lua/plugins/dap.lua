return {
  'rcarriga/nvim-dap-ui',
  dependencies = {
    'mfussenegger/nvim-dap'
  },
  config = function()
    local dap, dapui = require("dap"), require("dapui")

    require('dapui').setup()
    dap.listeners.after.event_initialized["dapui_config"] = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated["dapui_config"] = function()
      dapui.close()
    end
    dap.listeners.before.event_exited["dapui_config"] = function()
      dapui.close()
    end

    vim.keymap.set("n", "<Leader>b", ':DapToggleBreakpoint<CR>')
    vim.keymap.set("n", "<Leader>dx", ':DapTerminate<CR>')
    vim.keymap.set("n", "<Leader>do", ':DapStepOver<CR>')
  end
}