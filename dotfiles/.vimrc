set nocompatible                                    " be iMproved, required
filetype off                                        " required

" START - Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  let iCanHazVundle=0
endif
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'                          " Vundle manager itself
Plugin 'tpope/vim-sensible'                         " Some sensible defaults from tpope
Plugin 'scrooloose/syntastic'                       " syntax checking hacks for vim
Plugin 'preservim/nerdtree'                         " File browser panel
Plugin 'jistr/vim-nerdtree-tabs'                    " to make nerdtree better
Plugin 'Xuyuanp/nerdtree-git-plugin'                " show git status in nerdtree
Plugin 'ctrlpvim/ctrlp.vim'                            " fuzzy search within vim
Plugin 'ryanoasis/vim-devicons'                     " file type icons for vim
Plugin 'ap/vim-buftabline'                          " tab switching with buffers
Plugin 'itchyny/lightline.vim'                      " Better looking status line  
Plugin 'tpope/vim-fugitive'                         " git command within command mode
Plugin 'airblade/vim-gitgutter'                     " git difference markers
Plugin 'junegunn/gv.vim'                            " A git commit browser
Plugin 'tmhedberg/SimpylFold'                       " Code folding 
Plugin 'pangloss/vim-javascript'                    " Javascript bundle for vim
Plugin 'lepture/vim-jinja'                          " jinja support
Plugin 'vim-scripts/indentpython.vim'               " autoindent for python
Plugin 'nvie/vim-flake8'                            " flake8 for vim
Plugin 'ap/vim-css-color'                           " show colors from colorcode within vim
Plugin 'turbio/bracey.vim'                          " static file webserver *requires - node
Plugin 'ayu-theme/ayu-vim'                          " ayu theme
Plugin 'megantiu/true.vim'
Plugin 'makerj/vim-pdf'                             " open pdf inside vim
Plugin 'mhinz/vim-startify'                         " fancy start screen

" All of your Plugins must be added before the following line
if iCanHazVundle == 0
  echo "Installing Bundles, please ignore key map error messages"
  echo ""
  :PluginInstall
endif
" END - Setting up Vundle - the vim plugin bundler

filetype plugin indent on                           " required

set laststatus=2                                    " always on status line
set t_Co=256                                        " enable 256 colors in vim
set t_ut=                                           " extend bgcolor scheme
set ruler                                           " always show cursor position
set number                                          " show line number
set relativenumber                                  " show relative number on other lines
set showcmd                                         " show command history
set hlsearch                                        " enable search highlighting
set mouse=a                                         " enable mouse 
set guifont=FiraMona\ Regular\ Font\ 11             " font for vim
let python_highlight_all = 1                        " for python highlighting
set ma                                              " set marks
set fileformat=unix                                 " specifying os
set encoding=utf-8                                  " encoding scheme in terminal
set fileencoding=utf-8                              " encoding scheme in written file
set tabstop=4                                       " default tab size
set shiftwidth=4                                    " indentation for braces
set softtabstop=4                                   " cursor movement while typing on tab
set colorcolumn=80                                  " highlight columns
set expandtab                                       " indent as spaces instead of tab
set viminfo='25,\"50,n~/.viminfo                    " path to viminfo
set ignorecase                                      " ignore case while searching


" Enable code folding SimplyFold plugin
set foldmethod=indent
set foldlevel=99
let g:SimpylFold_docstring_preview=1


" vim colorscheme
syntax enable
set termguicolors                               " enable true colors support
let ayucolor="dark"                             " for dark version of theme
colorscheme true


" lightline config
set noshowmode
let g:lightline = { 'colorscheme': 'powerline' }



" disable autoindent when pasting text
" source: https://coderwall.com/p/if9mda/automatically-set-paste-mode-in-vim-when-pasting-in-insert-mode
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"


" ctrlp config
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = 'venv\|node_modules\|DS_Store\|git\|__pycache_\|pyclone\'


" Python Execution
autocmd FileType python map <buffer> <F5> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F5> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>


" Nertree configuration
map <C-n> :NERDTreeToggle<CR>
map <Leader>n <plug>NERDTreeTabsToggle<CR>


" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
call NERDTreeHighlightFile('py', 'Magenta', 'none', '	#ff00ff', '#151515')


" NERDTAB GIT STATUS
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }


" Syntastic Recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0 


" Wipe Registers with :WipeReg
command! WipeReg for i in range(34,122) | silent! call setreg(nr2char(i), []) | endfor

" Keymappings
"
" Enable folding with the spacebar
nnoremap <space> za

" indent/unindent with tab/shift-tab
nmap <Tab> >>
imap <S-Tab> <Esc><<i
nmap <S-tab> <<

" tag list
map <leader>t :TagbarToggle<CR>

" Navigate tabs
nnoremap <S-k> :bnext<CR>
nnoremap <S-j> :bprev<CR>
" Remap Esc
inoremap jj <Esc>
vnoremap <C-c> "+y
