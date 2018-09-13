" Put plugins and dictionaries in this dir (also on Windows)
let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir



" dein
"
" git clone https://github.com/Shougo/dein.vim.git ~/.vim/dein/repos/github.com/Shougo/dein.vim

set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim/dein'))
call dein#add('Shougo/dein.vim')



call dein#add('Shougo/vimproc.vim', {'build' : 'make'})



call dein#add('bling/vim-airline')

set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1



call dein#add('scrooloose/nerdtree')
call dein#add('jistr/vim-nerdtree-tabs')

map <Leader>n <plug>NERDTreeTabsToggle<CR>



call dein#add('kien/rainbow_parentheses.vim')

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces



call dein#add('airblade/vim-gitgutter')
call dein#add('benmills/vimux')
call dein#add('chrisbra/csv.vim')
call dein#add('daviddavis/vim-colorpack')
call dein#add('digitaltoad/vim-pug')
call dein#add('edkolev/tmuxline.vim')
call dein#add('godlygeek/tabular')
call dein#add('hail2u/vim-css3-syntax')
call dein#add('jmcantrell/vim-virtualenv')
call dein#add('kchmck/vim-coffee-script')
call dein#add('lifepillar/pgsql.vim')
call dein#add('mhinz/vim-signify')
call dein#add('mhinz/vim-tmuxify')
call dein#add('mileszs/ack.vim')
call dein#add('othree/html5.vim')
call dein#add('othree/javascript-libraries-syntax.vim')
call dein#add('pangloss/vim-javascript')
call dein#add('pbrisbin/html-template-syntax')
call dein#add('scrooloose/nerdcommenter')
call dein#add('terryma/vim-multiple-cursors')
call dein#add('tpope/vim-fugitive')
call dein#add('tpope/vim-repeat')
call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-unimpaired')
call dein#add('vim-jp/cpp-vim')



call dein#add('scrooloose/syntastic')

let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

let g:syntastic_python_checkers = []



call dein#add('shougo/neocomplcache')

let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3

inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags



call dein#add('mattn/webapi-vim')
call dein#add('mattn/gist-vim')

let g:gist_clip_command = 'xclip -selection clipboard'
let g:gist_detect_filetype = 1
let g:gist_show_privates = 1
let g:gist_post_private = 1
let g:gist_get_multiplefile = 1



call dein#add('shougo/unite.vim')
call dein#add('osyo-manga/unite-quickfix')



call dein#add('dag/vim2hs')

let g:haskell_conceal = 0
let g:haskell_conceal_enumerations = 0



call dein#add('sjl/gundo.vim')

let g:gundo_right = 1

map <Leader>u :GundoToggle<CR>



call dein#add('klen/python-mode')

:let g:pymode_python = 'python3'



call dein#end()



highlight WhiteSpaceEol ctermbg=darkgreen guibg=lightgreen
highlight Tabs ctermbg=darkred guibg=lightred
hi CursorColumn gui=NONE guibg=#000000
hi! link CursorColumn CursorLine

let g:whiteSpaceColor = 1

function ToggleWhiteSpaceColor()
  if g:whiteSpaceColor
    let g:whiteSpaceColor = 0
  else
    let g:whiteSpaceColor = 1
  end
  call WhiteSpaceColorCallback()
endfunction

function WhiteSpaceColorCallback()
  if g:whiteSpaceColor
    if !exists("w:match_WhiteSpaceEol")
      let w:match_WhiteSpaceEol = matchadd('WhiteSpaceEol', '\s\+$', -1)
    end

    if !exists("w:match_Tabs")
      let w:match_Tabs = matchadd('Tabs', '\t', -1)
    end
  else
    if exists("w:match_WhiteSpaceEol")
      call matchdelete(w:match_WhiteSpaceEol)
      unlet w:match_WhiteSpaceEol
    end

    if exists("w:match_Tabs")
      call matchdelete(w:match_Tabs)
      unlet w:match_Tabs
    end
  end
endfunction

au BufWinEnter * call WhiteSpaceColorCallback()



runtime ftplugin/man.vim

" Options
set background=dark
set backspace=indent,eol,start
"set cryptmethod=blowfish2
set expandtab
set history=10000
set hls
set incsearch
set mouse=a
set nobackup
set notimeout
set noshowmode
set number
set shiftwidth=2
set showcmd
set showmatch
set softtabstop=0
set t_Co=256
set tabstop=8
set keymap=greek_utf-8
set iminsert=0
set imsearch=0

set ttimeout
set ttimeoutlen=0

set timeout
"set timeoutlen=100000000000000000

let g:netrw_altv = 1



" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
  let myUndoDir = expand(vimDir . '/undodir')
  " Create dirs
  call system('mkdir ' . vimDir)
  call system('mkdir ' . myUndoDir)
  let &undodir = myUndoDir
  set undofile
  set undolevels=16384
  set undoreload=16384
endif



" Fn mappings
map <F2>  :set cursorline!<CR>
map <F3>  :set cursorcolumn!<CR>
map <F4>  :call ToggleWhiteSpaceColor()<CR>
map <F5>  :set wrap!<CR>
map <F6>  :if exists("g:syntax_on") <Bar> syntax off <Bar> else <Bar> syntax enable <Bar> endif<CR>
map <F7>  :set scrollbind!<CR>
map <F8>  :noh<CR>
map <F10> `[v`]
map <F11> @@
map <F13> @:



syntax on
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
filetype plugin indent on
