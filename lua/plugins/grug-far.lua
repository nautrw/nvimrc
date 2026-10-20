return {
    'MagicDuck/grug-far.nvim',
    keys = {
      { "<leader>fG", "<cmd>GrugFar<CR>", { desc = "Global find and replace (GrugFar)" } }
    },
    config = function()
      require('grug-far').setup({});
    end
  }
