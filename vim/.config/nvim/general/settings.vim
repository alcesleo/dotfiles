set mouse=a
set number
set nowrap

" More natural splits
set splitright
set splitbelow

" Default indentation
set expandtab    " Use spaces
set shiftwidth=4 " Use 4 spaces
set tabstop=8    " Display tabs as 8 spaces
set shiftround   " Snap to multiples of shiftwidth when indenting

" Spell checking
set spellfile=~/.config/nvim/spell/en.utf-8.add

" Searching
set ignorecase " Case insensitive search
set smartcase  " When an upper case character is typed, make it strict

" Be totally case insensitive in command mode though.
"
" Lets you type :pl<Tab>i<Tab> to get :PlugInstall.
" This would otherwise insist on you capitalizing the I yourself since the P
" would be capitalized and turn the case insensitivity off.
augroup dynamic_smartcase
    autocmd!
    autocmd CmdLineEnter : set nosmartcase
    autocmd CmdLineLeave : set smartcase
augroup END

" :terminal settings
augroup terminal
    autocmd!

    autocmd TermOpen * setlocal nonumber
augroup END