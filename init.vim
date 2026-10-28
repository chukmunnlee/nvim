" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" NeoBundle Scripts-----------------------------
if has('vim_starting')  
  set runtimepath+=~/.config/nvim/vim/bundle/neobundle.vim/
  set runtimepath+=~/.config/nvim/vim
endif

let neobundle_readme=expand('~/.config/nvim/vim/bundle/neobundle.vim/README.md')

if !filereadable(neobundle_readme)  
  echo "Installing NeoBundle..."
  echo ""
  silent !mkdir -p ~/.config/nvim/vim/bundle
  silent !git clone https://github.com/Shougo/neobundle.vim ~/.config/nvim/vim/bundle/neobundle.vim/
  let g:not_finsh_neobundle = "yes"
endif

call neobundle#begin(expand('$HOME/.config/nvim/vim/bundle'))  

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'tpope/vim-surround.git'
NeoBundle 'jlanzarotta/bufexplorer.git'
"NeoBundle 'mattn/emmet-vim.git'
NeoBundle 'Yggdroot/indentLine.git'
NeoBundle 'mustache/vim-mustache-handlebars.git'
NeoBundle 'scrooloose/nerdtree.git'
NeoBundle 'kien/rainbow_parentheses.vim.git'
"NeoBundle 'majutsushi/tagbar.git'
NeoBundle 'vim-airline/vim-airline.git'
NeoBundle 'vim-airline/vim-airline-themes.git'
NeoBundle 'tpope/vim-fugitive.git'
NeoBundle 'fatih/vim-go.git'
NeoBundle 'pangloss/vim-javascript.git'
NeoBundle 'tomasr/molokai.git'
NeoBundle 'ellisonleao/gruvbox.nvim'
NeoBundle 'ekalinin/Dockerfile.vim.git'
NeoBundle 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
NeoBundle 'junegunn/fzf.vim'
NeoBundle 'leafgarland/typescript-vim.git'
NeoBundle 'rust-lang/rust.vim.git'
NeoBundle 'tsandall/vim-rego.git'
NeoBundle 'hashivim/vim-terraform'
"NeoBundle 'https://github.com/ludovicchabant/vim-gutentags.git'
NeoBundle 'https://github.com/romainl/vim-cool.git'
"NeoBundle 'neoclide/coc.nvim', 'release', { 'build': { 'others': 'git checkout release' } }
NeoBundle 'neoclide/coc.nvim', 'release'
NeoBundle 'uarun/vim-protobuf.git'
NeoBundle 'AlexvZyl/nordic.nvim', 'main'
NeoBundle 'kdheepak/lazygit.nvim'
NeoBundle 'habamax/vim-godot'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'nvim-treesitter/nvim-treesitter'
"
"
"NeoBundle 'HerringtonDarkholme/yats.vim.git'
"NeoBundle 'tomlion/vim-solidity.git'

"NeoBundle 'Shougo/deoplete.nvim.git'

" ------------------------------------
" THIS IS WHERE YOUR PLUGINS WILL COME
" ------------------------------------

call neobundle#end()  
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck  

"End NeoBundle Scripts-------------------------

" execute pathogen#infect()

set expandtab
set tabstop=2
set shiftwidth=2
"set relativenumber
set nu

set cursorline

"autocmd FileType python setlocal tabstop=3 expandtab shiftwidth=3
"autocmd FileType yaml setlocal tabstop=2 expandtab shiftwidth=2
"autocmd FileType yml setlocal tabstop=2 expandtab shiftwidth=2
"nnoremap <silent> <leader>ff :Files<CR>

set backupdir=~/.vimbackup
set directory=~/.vimbackup

set hlsearch

set laststatus=2

set spell spelllang=en_au

"colorscheme nordic
"set background=light "dark
"colorscheme gruvbox
colorscheme molokai


" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
  "filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

set autoindent

set path+=**

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

"draw line at col 80
let &colorcolumn=join(range(81,999),",")
let &colorcolumn="80,".join(range(400,999),",")

"let g:deoplete#enable_at_startup = 1
"call deoplete#custom#option({
"\	'smart_case': v:true,
"\	'auto_complete': v:true
"\})

"python providers
let g:python3_host_prog="/usr/bin/python3"
let g:python_host_prog="/usr/bin/python"

"indentLine
set list lcs=tab:\|\ 

command F Files

"racer
"set hidden
"let g:racer_cmd="/home/cmlee/.cargo/bin/racer"
"let g:racer_experimental_completer=1
"let g:racer_insert_paren=1

"airline
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '◀'
"let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#gutentags#enabled = 1

"au BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=handlebars
"let g:mustache_abbreviations = 1

"fugitive
"set statusline+=%{fugitive#statusline()}

"autocmd FileType javascript :set makeprg=jshint\ %

"disable parenthesis matching
let g:loaded_matchparen=1

"for typescript
"let g:typescript_compiler_binary = 'tsc'
"let g:typescript_compiler_options = ''
"
"for GO
"let g:go_fmt_autosave = 0

autocmd FileType typescript :set makeprg=tsc\ %
"autocmd FileType gdscript,gdshader let b:coc_root_patterns = ['project.godot', '.godot']

autocmd QuickFixCmdPost [^1]* nested cwindow
autocmd QuickFixCmdPost 1* nested lwindow

"Disable all conceallevels
set conceallevel=0
let g:vim_json_syntax_conceal=-1
let g:indentLine_conceallevel=0

let NERDTreeIgnore = ['^tags$', '^.*\.pyc$', '^.*\.class$', 'node_modules', 'dist', 'target']
"let g:NERDTreeWinPos = "right"

"let g:tagbar_type_typescript = {
"  \ 'ctagstype': 'typescript',
"  \ 'kinds': [
"    \ 'c:classes',
"    \ 'n:modules',
"    \ 'f:functions',
"    \ 'v:variables',
"    \ 'v:varlambdas',
"    \ 'm:members',
"    \ 'i:interfaces',
"    \ 'e:enums',
"  \ ]
"\ }

let $FZF_DEFAULT_COMMAND='ag -l -g ""'
set rtp+=~/.fzf

command Fz Files
"
" setup mapping to call :LazyGit
nnoremap <silent> <leader>gg :LazyGit<CR>
nnoremap <silent> <leader>ff :Files<CR>
nnoremap <silent> <leader>ag :Ag<CR>

set nospell

lua << EOF
require'nvim-treesitter.configs'.setup {
  -- Languages you want installed immediately
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "gdscript", "godot_resource", "gdshader" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering a buffer
  auto_install = true,

  -- Enable advanced syntax highlighting
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },

  indent = { enabled = false },
}
EOF


"syntastic
"let g:syntastic_html_tidy_exec='/usr/bin/tidy'
"let g:syntastic_javascript_checkers=['jshint']

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_loc_list_height=5
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"
