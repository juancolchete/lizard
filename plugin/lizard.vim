command! -nargs=* -complete=custom,s:complete Lizard lua require'lizard'.open(<f-args>)
command! -nargs=* -complete=custom,s:complete LizardToggle lua require'lizard'.toggle(<f-args>)
command! TroubleClose lua require'lizard'.close()
command! TroubleRefresh lua require'lizard'.refresh()

