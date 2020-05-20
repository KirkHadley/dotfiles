call plug#begin('~/.config/nvim/plugged')
  Plug 'szw/vim-maximizer'
  Plug 'tmhedberg/SimpylFold'
  Plug 'w0rp/ale'
  Plug 'Raimondi/delimitMate'
  Plug '~/.fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'JamshedVesuna/vim-markdown-preview'
  Plug 'shime/vim-livedown'
  Plug 'scrooloose/nerdtree'
  " Plug 'othree/javascript-libraries-syntax.vim'
  " Plug 'Shutnik/jshint2.vim'
  Plug 'vim-airline/vim-airline'
  " Plug 'terryma/vim-expand-region'
  " Plug 'nathanaelkane/vim-indent-guides'
  " Plug 'pangloss/vim-javascript'
  " Plug 'jelera/vim-javascript-syntax'
  Plug 'elzr/vim-json'
  Plug 'plasticboy/vim-markdown'
  Plug 'tpope/vim-sensible'
  Plug 'mhinz/vim-signify'
  Plug 'Shougo/vimproc.vim', {'do' : 'make'}
  " Plug 'Valloric/YouCompleteMe' 
  Plug 'ddrscott/vim-side-search' 
  Plug 'bfredl/nvim-ipy'
  Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
  Plug 'haya14busa/incsearch.vim'
  Plug 'easymotion/vim-easymotion'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'wincent/command-t'
  Plug 'tpope/vim-unimpaired'
  Plug 'tomtom/tcomment_vim'
  Plug 'mileszs/ack.vim'
  Plug 'tpope/vim-surround'
  Plug 'Konfekt/FastFold'
  Plug 'voldikss/vim-floaterm'
  Plug 'liuchengxu/vista.vim'
  Plug 'bfredl/nvim-ipy'
  Plug 'itchyny/lightline.vim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'julienr/vim-cellmode' 
  call plug#end()
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
filetype plugin indent on
set wildmenu
set cursorline 
set showmatch
imap jj <Esc>
"colorscheme distinguished
set updatetime=250
set foldmethod=syntax
set foldlevelstart=0
set foldnestmax=20
let g:fastfold_fold_command_suffixes = []
nmap zuz (FastFoldUpdate)
let g:fastfold_savehook = 1
let g:tex_fold_enabled=1
let g:vimsyn_folding='af'
let g:xml_syntax_folding = 1
let g:php_folding = 1
let g:perl_fold = 1
let g:python_syntax_folding=1
let g:python_fold = 1
map <C-a> <Plug>(easymotion-bd-w)
map <C-e> <Plug>(easymotion-bd-e)
map <C-b> <Plug>(easymotion-b)
" map <C-k> <Plug>(easymotion-k)
" map <C-j> <Plug>(easymotion-j)
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)"
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP /Users/frederickhadley/twins'
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
" let g:ctrlp_cmd='CtrlP /home/ubnuntu/kirk'
" let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
let g:javascript_enable_domhtmlcss = 1
" let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
let mapleader = "\<Space>"
let vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_browser='Google Chrome'
let vim_markdown_preview_github=1
autocmd BufRead,BufNewFile *.md setlocal spell
map <Leader>c  <Plug>(IPy-Interrupt)
map <Leader>d <Plug>(IPy-Terminate)
nnoremap   <silent>   <Leader>i    :FloatermNew --height=0.5 --width=0.2 --wintype=floating --name=ipy --position=topright --autoclose=1 --name=ipy ipython <CR>
tnoremap   <silent>   <Leader>i    <C-\><C-n>:FloatermNew --height=0.5 --width=0.2 --wintype=floating --name=ipy --position=topright --autoclose=1 --name=ipy ipython <CR>
nnoremap   <silent>   <C-x>   :FloatermToggle<CR>
tnoremap   <silent>   <C-x>   <C-\><C-n>:FloatermToggle<CR>
" command! -nargs=* LaunchIpy execute 'FloatermNew --height=0.5 --width=0.2 --wintype=floating --name=ipy --position=topright --autoclose=1 --name=ipy ipython'
" command! -nargs=* ShowIpy execute 'FloatermShow ipy'
" command! -nargs=* ToggleIpy execute 'FloatermToggle ipy'
" nnoremap <Leader>i :LaunchIpy<CR>
" nnoremap <C-x> :ToggleIpy<CR>
" nnoremap <C-x> :ToggleIpy <CR>
" map <Leader>c  <Plug>(IPy-Interrupt) <Cmd>call IPyInterrupt()<cr>
" map <Leader>d <Plug>(IPy-Terminate) <Cmd>call IPyTerminate()<cr>
nnoremap <Leader>n :set number relativenumber<CR>
nnoremap <Leader>n1 :set nonumber norelativenumber<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>e :wq<CR>
nnoremap <Leader>k :NERDTree<CR>
nnoremap <leader>h :tabprevious<CR>
nnoremap <leader>l :tabprevious<CR>
nnoremap <Leader>o :lopen<CR>
nnoremap <leader>y :call system('nc localhost 8377', @0)<CR>
" nnoremap <Leader>t :Ctrlp /home/ubuntu/kirk/ <CR>
" let NERDTreeShowHidden=1
let g:python3_host_prog='/Users/frederickhadley/anaconda3/envs/newenv/bin/python3.6'
let g:deoplete#enable_at_startup = 1

" if !exists('g:deoplete#omni#input_patterns')
"   let g:deoplete#omni#input_patterns = {}
" endif
" let g:deoplete#disable_auto_complete = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" nnoremap <Leader>s :SyntasticToggleMode<CR>
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
nmap <Leader>4 $
nmap <Leader>6 ^
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
set relativenumber
set number
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)
noremap gV `[v`]
nnoremap <space> za
noremap m za
noremap ma zA
function! GetVisual() range
    let reg_save = getreg('"')
    let regtype_save = getregtype('"')
    let cb_save = &clipboard
    set clipboard&
    normal! ""gvy
    let selection = getreg('"')
    call setreg('"', reg_save, regtype_save)
    let &clipboard = cb_save
    return selection
endfunction
vmap <C-r> <Esc>:%s/<c-r>=GetVisual()<cr>//g<left><left>
vmap <C-f> <Esc>/<c-r>=GetVisual()<cr><left>
set softtabstop=2
set tabstop=2
set shiftwidth=2
set expandtab
" vp doesn't replace paste buffer
function! RestoreRegister()
  let @" = s:restore_reg
  return ''
endfunction
function! s:Repl()
  let s:restore_reg = @"
  return "p@=RestoreRegister()\<cr>"
endfunction
vmap <silent> <expr> p <sid>Repl()
let g:vim_markdown_folding_disabled=1
set clipboard=unnamed
let g:jsx_ext_required = 0 " Allow JSX in normal JS files


" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

"let g:tsuquyomi_disable_quickfix = 1
" let g:syntastic_typescript_checkers = ['tsuquyomi'] 
" let g:syntastic_loc_list_height = 5
" let g:syntastic_auto_loc_list = 0
" "let g:syntastic_quiet_messages = { "!level": "errors", "type":"style", "regex":'.*', "file:p":  '.*' }
" let g:syntastic_python_checkers = ['pylint']
" let g:syntastic_python_pylint_args = '-E'
" let g:syntastic_check_on_open = 0
" let g:syntastic_check_on_wq = 0
" let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_always_populate_loc_list = 0
" " let g:syntastic_error_symbol = '❌'
" "let g:syntastic_style_warning_symbol = '⁉️'
" " let g:syntastic_style_error_symbol = '⁉️'
" let g:syntastic_warning_symbol = '⚠️'
" let g:syntastic_error_symbol = '💩'
" let g:ycm_server_keep_logfiles = 1
" let g:ycm_server_log_level = 'debug'
" let g:ycm_server_use_vim_stdout = 1
" let g:ycm_goto_buffer_command = 'vertical-split'
" nnoremap <leader>jd :YcmCompleter GoTo<CR>
" " autocmd BufEnter *.tsx set filetype=typescript
" autocmd FileType typescript setlocal completeopt+=menu,preview
" autocmd FileType typescript nmap <buffer> <Leader>t : <C-u>echo tsuquyomi#hint()<CR>
" nnoremap <Leader>f :TsuquyomiDefinition<CR>
" " nnoremap <Leader>f <Plug>(TsuquyomiDefinition) <CR>
" let g:tsuquyomi_definition_split = 2 
" highlight link SyntasticErrorSign SignColumn
" highlight link SyntasticWarningSign SignColumn
" highlight link SyntasticStyleErrorSign SignColumn
" highlight link SyntasticStyleWarningSign SignColumn

let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1


let g:side_search_prg = 'ag '
  \. " --ignore='*.csv'"
  \. " --heading --stats -B 1 -A 4"
let g:side_search_splitter = 'vnew'
let g:side_search_split_pct = 0.4
nnoremap <Leader>ss :SideSearch <C-r><C-w><CR> | wincmd p
command! -complete=file -nargs=+ SS execute 'SideSearch <args>'

command! -nargs=* CtrlCwd execute 'CtrlP getcwd()'
cabbrev  SS  SideSearch
nnoremap <Leader>t :CtrlCwd <CR>
augroup CloseLoclistWindowGroup
  autocmd!
  autocmd QuitPre * if empty(&buftype) | lclose | endif
augroup END

let g:ale_lint_on_enter = 1
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_save = 1
let g:ale_set_loclist = 1 
let g:ale_set_quickfix = 0
let g:ale_open_list = 1
let g:ale_list_window_size = 5
let g:ale_echo_cursor = 0

" vim-ale flow eats all my inotify slots :/
let g:ale_linters = {
  \ 'c': [],
  \ 'cpp': [],
  \ 'python': ['flake8'],
  \ 'java': [],
  \ 'javascript': ['eslint'],
  \ }
"'python3': ['flake8'],
"let g:ale_python_flake8_args = '--ignore=E,W,F403,F405 --select=C'
let g:ale_python_flake8_options = '--select F,E --ignore W,E302,E231,E722,E128,E225,E302,E222,E265,E226,E501,E305,E271,E272,F401,F841,E203,E262,E731,E712'
"let g:ale_python3_flake8_options = '--select F'
let g:ale_sign_error = '💩'
let g:ale_sign_warning = '⚠️'
nmap <silent> <C-k> :lprevious<CR> 
nmap <silent> <C-j> :lnext<CR>
let g:ale_set_highlights = 0
highlight QuickFixLine ctermfg=15 ctermbg=9 guifg=White guibg=Red
nnoremap <c-W>o :MaximizerToggle<CR>
vnoremap <c-W>o :MaximizerToggle<CR>gv
fun! s:fzf_root()
	let path = finddir(".git", expand("%:p:h").";")
	return fnamemodify(substitute(path, ".git", "", ""), ":p:h")
endfun

nnoremap <silent> <Leader>ff :exe 'Files ' . <SID>fzf_root()<CR>
"inoremap <c-W>o:MaximizerToggle<CR>
" nnoremap <C-W>O :call MaximizeToggle()<CR>
" nnoremap <C-W>o :call MaximizeToggle()<CR>
" nnoremap <C-W><C-O> :call MaximizeToggle()<CR>
"
" function! MaximizeToggle()
"   if exists("s:maximize_session")
"     exec "source " . s:maximize_session
"     call delete(s:maximize_session)
"     unlet s:maximize_session
"     let &hidden=s:maximize_hidden_save
"     unlet s:maximize_hidden_save
"   else
"     let s:maximize_hidden_save = &hidden
"     let s:maximize_session = tempname()
"     set hidden
"     exec "mksession! " . s:maximize_session
"     only
"   endif
" endfunction
"let g:syntastic_warning_symbol = '⚠️'
" "autocmd! BufWritePost,BufEnter * Neomake 
" let g:ale_linters = {'python':['pylint']}
"let g:ale_python_pyflakes = '--ignore=W --select=F,C,E'
" let g:ale_python_pylint_options = '-E'
" "let g:neomake_python_enabled_makers = ['pylint']
" "let g:neomake_open_list = 2
" " let g:neomake_python_pylint_args = '-E'
" " let g:neomake_error_sign={'text': '💩',   'texthl': 'NeomakeErrorSign'}
" " let g:neomake_warning_sign = { 'text': '⚠️', 'texthl': 'NeomakeWarningSign',}
