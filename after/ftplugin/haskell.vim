" Language pragmas.
let s:ghc_cached_language_pragmas
  \= sort(split(system('ghc --supported-languages'), '\n'))

for lp in s:ghc_cached_language_pragmas
  exe 'amenu GHC_LANGUAGES.' . lp . ' :call append(0, "{-# LANGUAGE ' . lp . ' #-}")<cr>'
endfor

noremap <LocalLeader>la :emenu GHC_LANGUAGES.
noremap <LocalLeader>sl mzggvip:sort<CR>`z

" Expressions.
nnoremap <LocalLeader>we :Tabularize/=<CR>

" Types.
nnoremap <LocalLeader>wt V!~/bin/wrat<CR>
vnoremap <LocalLeader>wt !~/bin/wrat<CR>
