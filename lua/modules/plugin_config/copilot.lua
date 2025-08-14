local remap = vim.keymap.set

remap("n", "<leader>t", function()
  if vim.g.copilot_enabled == 1 then
    vim.cmd("Copilot disable")
  else
    vim.cmd("Copilot enable")
  end
end, { silent = true })
