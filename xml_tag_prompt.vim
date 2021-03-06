" Create a mapping in insert mode that will prompt the user for an XML tag
" name then add the open/close pair at the current cursor position leaving the
" cursor in the tag in insert mode.

function! s:GetTag()
    let tag = input("Tag: ")
    execute "normal! i<".tag."></".tag.">"
    execute "normal! " . repeat('h', strlen(tag)+2)
endfunction

inoremap \tag <C-o>:call <SID>GetTag()<enter>
