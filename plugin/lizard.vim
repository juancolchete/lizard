command! -nargs=* -complete=custom,s:complete Lizard lua require'lizard'.open(<f-args>)
