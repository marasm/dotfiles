return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
    require("toggleterm").setup {
      -- size can be a number or function which is passed the current terminal
      size = function(term)
        if term.direction == "horizontal"
        then
          return 12
        elseif term.direction == "vertical"
        then
          return vim.o.columns * 0.4
        end
      end,
      open_mapping = [[<c-t>]],
      hide_numbers = true,    -- hide the number column in toggleterm buffers
      autochdir = true,       -- when neovim changes it current directory the terminal will change it's own when next it's opened
      start_in_insert = true,
      insert_mappings = true,   -- whether or not the open mapping applies in insert mode
      terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
      persist_size = true,
      persist_mode = true,      -- if set to true (default) the previous terminal mode will be remembered
      direction = 'horizontal', --'vertical' | 'horizontal' | 'tab' | 'float',
      close_on_exit = true,     -- close the terminal window when the process exits
      -- Change the default shell. Can be a string or a function returning a string
      shell = vim.o.shell,
      auto_scroll = true, -- automatically scroll to the bottom on terminal output
      -- This field is only relevant if direction is set to 'float'
      winbar = {
        enabled = false,
        name_formatter = function(term)
          --  term: Terminal
          return term.name
        end
      },
    }
  end
}
