augroup Trouble
  autocmd!
  if has('nvim-0.6')
    " Use the new diagnostic subsystem for neovim 0.6 and up
    au DiagnosticChanged * lua require'lizard'.refresh({auto = true, provider = "diagnostics"})
  else
    au User LspDiagnosticsChanged lua require'lizard'.refresh({auto = true, provider = "diagnostics"})
  endif
  autocmd BufWinEnter,BufEnter * lua require("lizard").action("on_win_enter")
augroup end

function! s:complete(arg,line,pos) abort
  return join(sort(luaeval('vim.tbl_keys(require("lizard.providers").providers)')), "\n")
endfunction

command! -nargs=* -complete=custom,s:complete Lizard lua require'lizard'.open(<f-args>)
command! -nargs=* -complete=custom,s:complete LizardToggle lua require'lizard'.toggle(<f-args>)
command! TroubleClose lua require'lizard'.close()
command! TroubleRefresh lua require'lizard'.refresh()

