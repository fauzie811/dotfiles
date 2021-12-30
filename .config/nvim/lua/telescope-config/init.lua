-- require('telescope').load_extension('projects')
require('telescope').setup {
  pickers = {
    find_files = {
      hidden = true,
    },
  },
}
