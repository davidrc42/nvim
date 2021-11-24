
        function! T()
                " Read on our TODO file
                read ~/asciineovim

                " Some margin for readability
                :silent %>>
                :silent %>>
                :silent %>>

                " Go to line 1
                :1
        endfun
        let g:Startscreen_function = function('T')
