local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {
  b.formatting.phpcsfixer,
  b.formatting.prettier,
  b.formatting.rustfmt
}

null_ls.setup {
  debug = true,
  sources = sources,
}
