if vim.fn.executable("ruff") == 1 then
   vim.bo.formatprg = "ruff format -"
end
