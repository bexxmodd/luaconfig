local options = {
    encoding=utf8
  , compatible=false                    -- disable compatibility to old-time vi
  , mouse='va'                          -- middle-click paste with, enable mouse clicks
  , hlsearch=true                       -- highlight search
  , incsearch=true                      -- incremental search
  , tabstop=4                           -- number of columns occupied by a tab
  , expandtab=false                     -- make sure that every file uses real tabs, not spaces
  , shiftround=true                     -- round indent to multiple of 'sw'
  , softtabstop=4                       -- see multiple spaces as tabstops so <BS> does the right thing
  , smarttab=true
  , smartindent=true                    -- do smart indenting when starting a new line
  , shiftwidth=4                        -- width for autoindents
  , autoindent=true                     -- indent a new line the same amount as the line just typed
  , number=true                         -- add line numbers
  , wildmode={'longest','list'}         -- get bash-like tab completions
  , clipboard="unnamedplus"             -- copy paste between vim and everything else
  , cursorline=true                     -- highlight current cursorline
  , signcolumn='yes'                    -- ???
  , showmatch=true                      -- show the matching brackets
  , ttyfast=true                        -- Speed up scrolling in Vim
  , spell=true                          -- spell-checker
  , backup=false                        -- create backup file
  , cmdheight=2                         -- more space in command line for displaying msg
  , scrolloff=8                         -- number of lines to keep above and below the cursor
  , termguicolors=true
  , showtabline=2                       -- always show tabs
  , laststatus=0                        -- Always display the status line
  , completeopt={'menuone', 'noselect', 'noinsert', 'menu'} -- mostly just for cmp
  , cc='80'                             -- set an 80 column border for good coding style
  , guifont={"FiraCode Nerd Font", "h10"}
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- Let Airline display icons and use Fira Code font
vim.cmd "let g:airline_powerline_fonts = 1"
-- vim.cmd "syntax on"
-- vim.cmd "filetype plugin indent on"
-- vim.cmd "filetype plugin on"
-- let g:ale_completion_enabled = 1
vim.cmd "let g:ale_sign_error = '👹'"
vim.cmd "let g:ale_sign_warning = '☢️'"
vim.cmd "let g:ale_fixers = { 'rust': ['rustfmt', 'trim_whitespace', 'remove_trailing_lines'] }"
vim.cmd "let g:polyglot_disabled = ['autoindent']"
