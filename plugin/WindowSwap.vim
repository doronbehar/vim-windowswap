if !exists('g:windowswap_map_keys')
   let g:windowswap_map_keys = 1
endif

if !exists('g:windowswap_mapping_deprecation_notice')
   let g:windowswap_mapping_deprecation_notice = 0
endif

if !exists('g:windowswap_enable_deprecated_mappings')
   let g:windowswap_enable_deprecated_mappings = 1
endif

if g:windowswap_map_keys
   nnoremap <silent> <leader>ww :call WindowSwap#EasyWindowSwap()<CR>
   if g:windowswap_enable_deprecated_mappings
      nnoremap <silent> <leader>yw :call WindowSwap#DeprecatedMark()<CR>
      nnoremap <silent> <leader>pw :call WindowSwap#DeprecatedDo()<CR>
   endif
endif

let g:loaded_windowswap = 1
