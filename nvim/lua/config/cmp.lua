local cmp = require('cmp')
local lspkind = require('lspkind')

local has_words_before = function()
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local function tooBig(bufnr)
    local max_filesize = 10 * 1024 -- 100 KB
    local check_stats = (vim.uv or vim.loop).fs_stat
    local ok, stats = pcall(check_stats, vim.api.nvim_buf_get_name(bufnr))
    if ok and stats and stats.size > max_filesize then
      return true
    else
      return false
    end
end

local preferred_sources = {
    { name = 'nvim_lsp' },
    { name = 'nvim_lsp_signature_help' },
    { name = 'luasnip',  option = { show_autosnippets = true } },
    { name = 'path' },
    { name = 'buffer',  keyword_pattern = '[a-zA-Z_][a-zA-Z_0-9]*', indexing_interval = 1000 },
}

cmp.setup({
    snippet = {
        expand = function(args)
          require('luasnip').lsp_expand(args.body)
        end
    },
  formatting = {
    format = lspkind.cmp_format(),
  },
  mapping = cmp.mapping.preset.insert({
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif has_words_before() then
        cmp.complete()
      else
        fallback()
      end
    end, { "i", "s" }),
    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end, { "i", "s" }),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources(preferred_sources),
  performance = {
    max_view_entries = 7,
    fetching_timeout = 1000,
  },
  vim.api.nvim_create_autocmd("BufRead", {
    group = vim.api.nvim_create_augroup("CmpBufferDisableGrp", { clear = true }),
    callback = function(ev)
      local sources = preferred_sources
      if not tooBig(ev.buf) then
        sources[#sources + 1] = { name = "buffer", keyword_length = 4 }
      end
      cmp.setup.buffer({
        sources = cmp.config.sources(sources),
      })
    end,
  })
})
