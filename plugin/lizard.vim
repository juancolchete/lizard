command! -nargs=* -complete=custom,s:complete Lizard lua require'lizard'.open(<f-args>)
command! -nargs=* -complete=custom,s:complete LizardToggle lua require'lizard'.toggle(<f-args>)
command! LizardClose lua require'lizard'.close()
command! LizardRefresh lua require'lizard'.refresh()

