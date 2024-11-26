require("oil").setup({
    default_file_explorer = true,
    columns = { "size" },
    skip_confirm_for_simple_edits = false,
})
vim.api.nvim_create_autocmd("VimEnter", {
    group = vim.api.nvim_create_augroup("oil_autoopen", { clear = true }),
    callback = function(event)
        local path = event.file
        if vim.fn.isdirectory(path) == 1 then
            require("oil").open(path)
        end
    end
})

vim.keymap.set("n", "<leader>pv", ":Oil<CR>")
