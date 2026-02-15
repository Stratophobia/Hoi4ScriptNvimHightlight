vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  group = vim.api.nvim_create_augroup("HOI4Detection", { clear = true }),
  pattern = { "*.txt", "*.gui", "*.gfx" },
  callback = function(args)
    local full_path = vim.api.nvim_buf_get_name(args.buf)
    if full_path:find("mod") or full_path:find("common") or full_path:find("interface") then
      vim.api.nvim_set_option_value("filetype", "hoi4", { buf = args.buf })
    end
  end,
})
