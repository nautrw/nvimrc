return {
  'mfussenegger/nvim-lint',
  config = function ()
    require('nvim-lint').linters_by_ft = {
      python = { 'ruff' }
    }
  end
}
