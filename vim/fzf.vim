command! -bang VimFiles call fzf#vim#files('~/.config/nvim', <bang>0)
command! -bang DotFiles call fzf#vim#files('~/.config', <bang>0)
command! -bang CodeFiles call fzf#vim#files('~/code', <bang>0)
command! -bang HomeFiles call fzf#vim#files('~/', <bang>0)
command! -bang SwitchDirectory call fzf#run(fzf#wrap({'source': 'cat ~/.config/nvim/vim/fzf-dirs | sed "s/.*: \(.*\)$/\1/" | sed "s#~#${HOME}#"', 'sink': 'cd'}, <bang>0))

function! s:list_buffers()
  redir => list
  silent ls
  redir END
  return split(list, "\n")
endfunction

function! s:delete_buffers(lines)
  execute 'bwipeout' join(map(a:lines, {_, line -> split(line)[0]}))
endfunction

command! BuffersDelete call fzf#run(fzf#wrap({
  \ 'source': s:list_buffers(),
  \ 'sink*': { lines -> s:delete_buffers(lines) },
  \ 'options': '--multi --reverse --bind ctrl-a:select-all+accept'
\ }))

let g:fzf_buffers_jump = 1
let g:fzf_preview_window = ['left:60%', 'ctrl-/']
autocmd BufWrite *.lua call LuaFormat()
