vim.api.nvim_create_autocmd('User', {
      pattern = 'OilEnter',
      callback = vim.schedule_wrap(function(args)
        local oil = require('oil')
        if vim.api.nvim_get_current_buf() == args.data.buf
            and oil.get_cursor_entry()
            and vim.fn.winwidth '%' > 100 then
            oil.open_preview() end
      end),
    })

-- make help menu go on vsplit right
vim.api.nvim_create_autocmd("BufWinEnter", {
    pattern = { "*.txt" },
    callback = function()
        if vim.bo.filetype == "help" then
            vim.cmd.wincmd("L")
        end
    end
})   
