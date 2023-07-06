local telescope = require("telescope")
local builtin = require('telescope.builtin')
local actions = require('telescope.actions')
local fb_actions = telescope.extensions.file_browser.actions;
local STARTING_DIRECTORY = "D:/Programming";

-- Define the function for setting the NvimTree root directory
local function set_telescope_root(prompt_bufnr)
    local entry = require('telescope.actions.state').get_selected_entry(prompt_bufnr)
    if vim.fn.isdirectory(entry.path) == 0 then
        fb_actions.change_cwd(prompt_bufnr);
        require("nvim-tree").change_dir(vim.fn.fnamemodify(entry.path, ":h"))
        actions.close(prompt_bufnr);
        return;
    end
    if entry ~= nil then
        fb_actions.change_cwd(prompt_bufnr);
    end
end -- Modify the attach_mappings method to call set_telescope_root

telescope.setup {
    extensions = {
        file_browser = {
            -- disables netrw and use telescope-file-browser in its place
            hijack_netrw = true,
            mappings = {
                ["i"] = {
                    -- your custom insert mode mappings
                },
                ["n"] = {
                    -- your custom normal mode mappings
                },
            },
            attach_mappings = function(prompt_bufnr, map)
                local function perform_selection()
                    set_telescope_root(prompt_bufnr);
                end

                map('i', '<CR>', perform_selection);
                map('n', '<CR>', perform_selection);
            end
        },
    },
}



-- Load the file_browser extension and map it to a key
telescope.load_extension "file_browser"
vim.keymap.set('n', '<leader>bf', ':Telescope file_browser<CR>', { noremap = true })

-- Bind keys to Telescope functions
vim.keymap.set('n', "<C-f>", builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<Space><Space>', builtin.oldfiles, {})
vim.keymap.set('n', '<C-g>', builtin.live_grep, {})
vim.keymap.set('n', '<C-h>', builtin.help_tags, {})

-- Auto loads into my wanted starting directory
vim.cmd(":cd " .. STARTING_DIRECTORY)
