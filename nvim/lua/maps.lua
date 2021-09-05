local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('n', '<space><space>', ':noh<CR>', {silent = true})

map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

--Telescope
map('n', '<leader>f', '<cmd>Telescope find_files<CR>')

--Compe
map("i", "<tab>", "compe#confirm({ 'keys': '<tab>', 'select': v:true })", { expr = true })
map("i", "<CR>", "compe#confirm({ 'keys': '<CR>', 'select': v:true })", { expr = true })

--lsp
map('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', { silent = true })
map('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', { silent = true })
map('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', { silent = true })
map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', { silent = true })
map('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', { silent = true })
map('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', { silent = true })
map('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', { silent = true })
map('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', { silent = true })
map('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', { silent = true })
map('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', { silent = true })
map('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', { silent = true })
map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', { silent = true })
map('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', { silent = true })
map('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', { silent = true })
map('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', { silent = true })
map('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', { silent = true })
map("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", { silent = true })
