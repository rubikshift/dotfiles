local M = {}

M.load_options = function()
  local opt = vim.opt
  local defaults = {
    backup = false,
    clipboard = "unnamedplus",
    cmdheight = 2,
    colorcolumn = '80',
    completeopt = { "menuone", "noselect" },
    conceallevel = 0,
    cursorline = true,
    expandtab = true,
    fileencoding = "utf-8",
    foldexpr = "nvim_treesitter#foldexpr()", -- set to "nvim_treesitter#foldexpr()" for treesitter based folding
    foldmethod = "expr", -- folding, set to "expr" for treesitter based folding
    foldenable = false,
    hidden = true, -- required to keep multiple buffers and open multiple buffers
    hlsearch = true, -- highlight all matches on previous search pattern
    ignorecase = true, -- ignore case in search patterns
    -- mouse = "a", -- allow the mouse to be used in neovim
    number = true,
    pumheight = 10,
    relativenumber = true,
    scrolloff = 8, --idk
    sidescrolloff = 8,
    shiftwidth = 4,
    showmode = false,
    showtabline = 2,
    signcolumn = "yes",
    smartcase = true,
    smartindent = true,
    splitbelow = true,
    splitright = true,
    swapfile = false, -- creates a swapfile
    tabstop = 4,
    termguicolors = true,
    title = true, -- set the title of window to the value of the titlestring
    -- undodir = CACHE_PATH .. "/undo", -- set an undo directory
    undofile = true, -- enable persistent undo
    updatetime = 300,
    wrap = false,
    writebackup = false,
  }
  opt.shortmess:append "c"
  for k,v in pairs(defaults) do
    vim.opt[k] = v
  end

  -- remove trailing whitespace on save
  vim.api.nvim_command([[autocmd BufWritePre * :%s/\s\+$//e]])
end

-- vim.g.indent_setColors=0
return M
