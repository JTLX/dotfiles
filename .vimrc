call plug#begin('~/.vim/plugged')
Plug 'mattn/emmet-vim'
Plug 'easymotion/vim-easymotion'
Plug 'skywind3000/asyncrun.vim'
Plug 'tpope/vim-surround'
"Plug 'qualiabyte/vim-colorstepper'
Plug 'brooth/far.vim'
Plug 'mhinz/vim-startify'
Plug 'jistr/vim-nerdtree-tabs'
"Plug 'sheerun/vim-polyglot'
Plug 'yssl/QFEnter' "Quickfix
Plug 'tmhedberg/matchit'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'majutsushi/tagbar'
Plug 'craigemery/vim-autotag'
"Plug 'ajh17/VimCompletesMe'
Plug 'Valloric/YouCompleteMe'
Plug 'godlygeek/tabular'
Plug 'jiangmiao/auto-pairs'
Plug 'simeji/winresizer'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'itchyny/lightline.vim'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdTree'
Plug 'scrooloose/nerdcommenter'
Plug 'szw/vim-maximizer'
Plug 'terryma/vim-multiple-cursors'
Plug 'szw/vim-maximizer'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-sleuth'
Plug 'dkprice/vim-easygrep'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'neowit/vim-force.com'
call plug#end()



" -- PERSONAL PREFERENCES --
colorscheme blame
let macvim_skip_colorscheme=1
set guicursor+=a:blinkon0
set nocompatible
set nowrap
let mapleader=","
set relativenumber
set number
set list
set listchars=tab:▸-
set ignorecase
set smartcase
set hlsearch
set incsearch
set autoindent " turns on indentation
set smartindent " makes indentation do the right thing
"set cindent "should not be used with smartindent
filetype plugin on
syntax on
set binary
set noeol
set formatoptions=r "auto comment on hitting enter on a comment line"
let g:winresizer_start_key = '<C-B>'
nnoremap <space> za
vnoremap <space> zf
set foldmethod=indent   
autocmd BufNewFile,BufRead *.component set syntax=html
autocmd BufNewFile,BufRead *.resource set syntax=javascript
set re=1 "use an old version of regex which makes typing faster https://stackoverflow.com/questions/19030290/syntax-highlighting-causes-terrible-lag-in-vim
set scrolloff=5 "number of context lines around cursor
set timeoutlen=1000 ttimeoutlen=0
set nofoldenable
let g:AutoClosePairs = "() {} "
"let g:far#source = 'ag'
let g:far#window_height = 40

let g:asyncrun_open = 8
nnoremap <leader>f :AsyncRun cd /Users/joseph/Documents/leandata/Magellan && npm run task-deploy<CR>



" -- END PERSONAL PREFERENCES --
"
" -- QUICKFIX PREFERENCES --
let g:qfenter_keymap = {} 
let g:qfenter_keymap.vopen = ['<C-v>'] 
let g:qfenter_keymap.hopen = ['<C-CR>', '<C-s>', '<C-x>'] 
let g:qfenter_keymap.topen = ['<C-t>'] 
let g:qfenter_keymap.open_keep = ['p'] 
" -- END QUICKFIX PREFERENCES --

let g:apex_conflict_check = 0
nnoremap <leader>d :ApexDeployOne<CR>y<CR>
nnoremap <leader>b :silent exec "!npm run task-deploy"<CR>


let g:apex_backup_folder = '/Users/joseph/.force-extras/backup'
let g:apex_temp_folder = '/Users/joseph/.force-extras/temp'
let g:apex_properties_folder = '/Users/joseph/Documents/leandata/FuzzyMatcher'
let g:apex_tooling_force_dot_com_path = '/Users/joseph/.force-extras/tooling-force.com-0.4.0.2.jar'

" -- MULTISELECT SETTINGS --
let g:multi_cursor_exit_from_insert_mode = 0
" -- END MULTISELECT SETTINGS --

" -- AIRLINE SETTINGS --
"let g:airline_right_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_left_alt_sep= ''
"let g:airline_left_sep = ''
let g:airline_theme='angr'
let g:airline_highlighting_cache=1
" -- END AIRLINE SETTINGS --
"
" -- AUTOPAIR SETTINGS --

" -- END AUTOPAIR SETTINGS --
"
" -- CtrlP SETTINGS --
set runtimepath^=~/.vim/bundle/ctrlp.vim
map <F2> :CtrlP <CR>
map <C-p> :CtrlP <CR>
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_working_path_mode = 0
" -- END CtrlP SETTINGS --

" -- Bookmarks SETTINGS --
let g:bookmark_disable_ctrlp = 1
" -- END Bookmarks SETTINGS --

nnoremap <C-t>     :tabnew<CR>
inoremap <C-t>     <Esc>:tabnew<CR>

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

:command WQ wq
:command Wq wq
:command W w
:command Q q

" -- ACK SETTINGS --
" Controls the number of lines for ack quickfix window
let g:ack_qhandler = "botright copen 25"
let g:ack_use_cword_for_empty_search = 1
let g:ack_mappings = {
      \ "t": "<C-W><CR><C-W>T",
      \ "T": "<C-W><CR><C-W>TgT<C-W>j",
      \ "o": "<CR>",
      \ "O": "<CR><C-W><C-W>:ccl<CR>",
      \ "go": "<CR><C-W>j",
      \ "x": "<C-W><CR><C-W>K",
      \ "H": "<C-W><CR><C-W>K<C-W>b",
      \ "v": "<C-W><CR><C-W>H<C-W>b<C-W>J<C-W>t",
      \ "gv": "<C-W><CR><C-W>H<C-W>b<C-W>J" 
      \}

" -- END ACK SETTINGS --
"
map <C-a> :MaximizerToggle!<CR>
nnoremap <leader>n :NERDTreeTabsToggle<CR>
nnoremap <leader>l :NERDTreeFind<CR>
"
" fzf command shortcuts
cnoreabbrev Ack Ack!
nnoremap <Leader>A :Ack!<Space>
nnoremap <Leader>C :Ack!<Space><cword><CR>
nnoremap <leader>a :Ag<CR>
"command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, '--color-path "1;20"', fzf#vim#with_preview(), <bang>0)
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, '--color-path "1;20"',fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'up:60%'),<bang>0)
nnoremap <leader>s :BLines<CR>
nnoremap <leader>m :Marks<CR>

                                   
    let g:ascii = [
                \' ___      ___  __     ___      ___ ',
                \'|"  \    /"  ||" \   |"  \    /"  |',
                \' \   \  //  / ||  |   \   \  //   |',
                \'  \\  \/. ./  |:  |   /\\  \/.    |',
                \'   \.    //   |.  |  |: \.        |',
                \'    \\   /    /\  |\ |.  \    /:  |',
                \'     \__/    (__\_|_)|___|\__/|___|'
                \''
                \]
    let g:startify_custom_header = g:ascii + startify#fortune#boxed()
    let g:startify_custom_header_quotes = []


    
