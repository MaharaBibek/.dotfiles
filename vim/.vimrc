" https://github.com/mbrochh/vim-as-a-python-ide
" NOTE:
" -----
" DO NOT USE <C-z> FOR SAVING WHEN PRESENTING!
" ============================================

" =============================================================================
" Automatic reloading of .vimrc
" To enable a feature, it works
" BUT to disable a feature, you need to exit the Vim
"
 autocmd! bufwritepost .vimrc source %
" au Bufwritepost .vimrc so ~/.vimrc " Then, What does this do?
" -----------------------------------------------------------------------------

set nocompatible    " Not Compatible to Vi - Make it compatible to Vim
filetype plugin on  " Enable Filetype detection 
" filetype on  " Then, What does this do?
syntax on 

" =============================================================================
" Better copy & paste
"
 set pastetoggle=<F2> "RESEARCH
 set clipboard=unnamed " This allows you to copy/paste from other Apps to Vim
" ----------------------------------------------------------------------------- 

" =============================================================================
" Mouse and Backspace
"
 set mouse=a " Enables the interaction of mouse over Vim file(on OSX - Press ALT & Click)
 set bs=2    " make BackSpace behave like normal again
" ----------------------------------------------------------------------------- 

" =============================================================================
" <Leader> key by default is back-slash --> \
" Rebind <Leader> key with 'mapleader' built-in function provided by Vim
" <Leader> is a special key that allows you to create new set of
" key-combos, in conjunction with the any other key
"
" let mapleader = ","
"
" RESEARCH:
" ---------
" https://stackoverflow.com/questions/1764263/what-is-the-leader-in-a-vimrc-file#1764336
" The <Leader> key is mapped to \ by default. So if you have a map of <Leader>t, you can 
" execute it by default with \+t. For more detail or re-assigning it using the mapleader 
" variable, see:
"
" :help leader
" -----------------------------------------------------------------------------

" =============================================================================
"
" Bind nohl - RESEARCH...
"
" Removes highlight of your last search
" n - normal mode
" v - visual mode
" i - insert mode
" <CR> - Carriage Return 'a.k.a' [ENTER]
" <C> - [Ctrl] Key
" CAN BE DEMONSTRATED ONLY WHEN COLOR-SCHEME IS ENABLED
"
" noremap <C-n> :nohl<CR>
" vnoremap <C-n> :nohl<CR>
" inoremap <C-n> :nohl<CR>
" -----------------------------------------------------------------------------

" =============================================================================
" Quicksave Command
" 
" noremap <C-Z> :update<CR>
" vnoremap <C-Z> <C-C>:update<CR>
" inoremap <C-Z> <C-O>:update<CR>
"
" where,
" <Z> - Z/z
" ----------------------------------------------------------------------------- 

" =============================================================================
" Quick quit command
"
 noremap <Leader>e :quit<CR> "Quit current window
 noremap <Leader>E :qa!<CR> "Quit all windows
" -----------------------------------------------------------------------------

" =============================================================================
" MOVE | NAVIGATE BETWEEN SPLITs
" RESEARCH - feature not working as intended...
" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w
" + <movement> 
" It was not working, because you used <c..> instead of <C..> in each occurence
map <C-j> <C-w>j 
map <C-k> <C-w>k 
map <C-l> <C-w>l 
map <C-h> <C-w>h 
" -----------------------------------------------------------------------------

" =============================================================================
" easier moving between tabs
"
 map <Leader>n <esc>:tabnext<CR>
 map <Leader>m <esc>:tabprevious<CR>

" RESEARCH
" --------
" https://superuser.com/questions/410982/in-vim-how-can-i-quickly-switch-between-tabs
" http://vim.wikia.com/wiki/Using_tab_pages
" https://www.linux.com/learn/vim-tips-using-tabs
" -----------------------------------------------------------------------------

" =============================================================================
" map SORT function to a key
" AWEEESOOOOMEEEEEEEEEEEEEE!
"
 vnoremap <Leader>s :sort<CR>
" -----------------------------------------------------------------------------

" =============================================================================
" easier moving of CODE BLOCKs 
" You can do it without this, however it looses its selection
" AWEEEESOOOMEEEEEEEEEEE!
"
" vnoremap < <gv " better indentation
" vnoremap > >gv " better indentation
" -----------------------------------------------------------------------------

" =============================================================================
" Show Trailing-whitespace - RESEARCH MORE...
" ------------------------
" Since, you do not want to leave any trailing-whitespace in your code, this
" setting allows you to avoid whitespace. There are going to be cases when you
" will work with files, on which a team is working, or possibly may be SOLO.
" Other people will edit the file without considering the trailing-whitespace,
" or maybe their IDEs are responsible for that. In the end, you'll end up with
" lots of 'diffs' wihtout any actual changes, but only the trailing-whitespaces
" to find out in the end. 
"
" Must be inserted BEFORE the colorscheme command
"
" autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red au
" au InsertLeave * match ExtraWhitespace /\s\+$/
" -----------------------------------------------------------------------------

" =============================================================================
" Color Scheme - Commands are valid only after the Wombat installation.
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
" 
" set t_co=256
" color wombat256mod
" -----------------------------------------------------------------------------

" =============================================================================
" Enable syntax highlighting
" You need to reload this file for the change to apply
"
" RESEARCH - required for python-mode to function well
 filetype off " RESEARCH 
 filetype plugin indent on " RESEARCH...
 syntax on " This enables the syntax highlighting
" -----------------------------------------------------------------------------

" =============================================================================
" Showing line numbers and length
" 
 set number " show line numbers
" set relativenumber
 set tw=79 " width of document (used by gd)
 set nowrap " don't automatically wrap on load
 set fo-=t " don't automatically wrap text when typing
 set colorcolumn=80 "RED-BORDER to demarcate the ending of the line
" highlight ColorColumn ctermbg=233 " Change BORDER-COLOR
" -----------------------------------------------------------------------------

" =============================================================================
" easier formatting of paragraphs
" This, however, can destroy your bullet-list.
" PRESS: [Shift] + q, which equals 'Q' to do the below-mentioned action.
"
 vmap Q gq
 nmap Q gqap
" -----------------------------------------------------------------------------

" =============================================================================
" Useful Settings
"
 set history=700
 set undolevels=700
" -----------------------------------------------------------------------------

" =============================================================================
" REAL PROGRAMMERS don't use TABs, but SPACEs
"
 set tabstop=4
 set softtabstop=4
 set shiftwidth=4
 set shiftround
 set expandtab
" -----------------------------------------------------------------------------

" =============================================================================
" Make search case insensitive - This is useful when you do RegEx for search
"
 set hlsearch
 set incsearch
 set ignorecase
 set smartcase
" -----------------------------------------------------------------------------

" =============================================================================
" Disable stupid backup and swap files - they trigger too many events for file 
" system watchers
"
set nobackup
set nowritebackup
set noswapfile
" -----------------------------------------------------------------------------

" =============================================================================
" Setup pathogen to manage your plugins
" mkdir -p ~/.vim/autoload ~/.vim/bundle
" curl -so ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/
" vim-pathogen/master/autoload/pathogen.vim, from https://github.com/tpope/vim-
" pathogen/blob/master/autoload/pathogen.vim
" Now you can install any plugin into a .vim/bundle/plugin-name/ folder
"
 call pathogen#infect() 
 call pathogen#helptags() 
" -----------------------------------------------------------------------------

" =============================================================================
" Python IDE Setup
" =============================================================================

" Settings for vim-powerline
" https://github.com/Lokaltog/vim-powerline
" https://github.com/powerline/powerline  
" cd ~/.vim/bundle
" git clone https://github.com/powerline/powerline 
 set laststatus=2

" Settings for Ctrlp
" https://github.com/kien/ctrlp.vim
" https://github.com/ctrlpvim/ctrlp.vim 
" cd ~/.vim/bundle
" git clone https://github.com/kien/ctrlp.vim.git
 let g:ctrlp_max_height = 30 
 set wildignore+=*.pyc
 set wildignore+=*_build/*
 set wildignore+=*/coverage/*

" Settings for python-mode
" https://github.com/python-mode/python-mode
" cd ~/.vim/bundle
" git clone https://github.com/python-mode/python-mode.git
 map <Leader>g :call RopeGotoDefinition()<CR>
 let ropevim_enable_shortcuts = 1
 let g:pymode_rope_goto_def_newwin = "vnew"
 let g:pymode_rope_extended_complete = 1
 let g:pymode_breakpoint = 0
 let g:pymode_syntax = 1
 let g:pymode_syntax_builtin_objs = 0
 let g:pymode_syntax_builtin_funcs = 0
 map <Leader>b Oimport ipdb; ipdb.set_trace() #BREAKPOINT<C-c>

" Better navigating through omnicomplete option list
" See http://stackoverflow.com/questions/2170023/how-to-map-keys-for
 set completeopt=longest,menuone
 function! OmniPopup(action)
   if pumvisible()
       if a:action == 'j'
           return "\<C-N>"
       elseif a:action == 'k'
           return "\<C-P>"
       endif
   endif
       return a:action
 endfunction

 inoremap <silent>C-j> <C-R>=OmniPopup('j')<CR>
 inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>

" Python folding
" mkdir -p ~/.vim/ftplugin
" wget -O ~/.vim/ftplugin/python_editing.vim http://ww.vim.org/script
 set nofoldenable

" =============================================================================
" =============================================================================

" RESIZE
" [Ctrl] Key was not put in the combo with [ARROW Direction] keys, because it 
" coincided with vimwiki keys
nnoremap <Up>       :resize -3<CR>
nnoremap <Down>     :resize +3<CR>
nnoremap <Left>     :vertical resize -3<CR>
nnoremap <Right>    :vertical resize +3<CR>

" Lex FileExplorer and Resize it to 30
map <C-n> :Lex!<CR>
map <C-b> :vertical resize 30<CR>

" Open Current File onto NERDTree File Explorer
nnoremap <Leader>f :NERDTreeFind<CR>

" SPELL CHECK
" set spell

" =============================================================================
" =============================================================================

" gotbletu : vimwiki - Notetaking with Markdown and Preview - Linux TUI 
" https://www.youtube.com/watch?v=ONh95PNBW-Q&t=2s 
" https://github.com/gotbletu/shownotes/blob/master/vimwiki.md

" configuration

" vimwiki - Personal Wiki for Vim
" https://github.com/vimwiki/vimwiki
"
" set nocompatible " Settings already configured above
" filetype plugin on " Settings already configured above 
" syntax on " Settings already configure above
"
" vimwiki with markdown support
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
" helppage -> :h vimwiki-syntax 

" vim-instant-markdown - Instant Markdown previews from Vim
" https://github.com/suan/vim-instant-markdown
 let g:instant_markdown_autostart = 0	" disable autostart
 map <leader>md :InstantMarkdownPreview<CR>

" SUCCESSFUL

" =============================================================================
" =============================================================================

" Limelight: Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" =============================================================================
" =============================================================================

" CUSTOM CODE-SNIPPET
"
" Start Turning vim into a /comfy/ IDE!: Luke Smith
" --> https://www.youtube.com/watch?v=Q4I_Ft-VLAg&t=37s 
"
" In INSERT-MODE, Press <Space> twice to get to the <++>, 
" while "_ means: Delete it and put it in empty buffer. 
 autocmd filetype markdown,html inoremap <Space><Space> <Esc>/<++><Enter>"_c4l

" When the file is HTML, map the key-combo ;i to generate HTML-snippet
" <em></em><Space><++>, and so on...
 autocmd filetype html inoremap ;i <em></em><Space><++><Esc>FeT>i
" where, Fe --> F - Find(Towards); Move the cursor TOWARDS the first occurence 
" of 'e', which means FIND 'e' backwards
" T> --> T - TO; Go to '>'
" 
" SIMILARLY,
 autocmd Filetype markdown,html inoremap ;b <b></b><Space><++><Esc>FbT>i

" AND,
 autocmd FileType markdown,html inoremap ;p <p></p><EnTeR><eNtEr><++><Esc>02k3li

" AND, This code snippet is written as an assignment, and practice.
 autocmd fIlEtYpE markdown,html inoremap ;c <!--  --><Enter><++><Esc>0k/<!--<Enter>4li

" thoughtbot: ULTIMATE VDO
" [How to Do 90% of What Plugins Do (With Just Vim)](https://www.youtube.com/watch?v=XA2WjJbmmoM)
" 0:38:20 - snippets
" .vimrc

" Read an empty HTML template and move cursor to title
nnoremap ,html :-1read ~/.vim/code_snippets/html/skeleton/.skeleton.html<CR>3jwf>a

" Mapping - Comment(Both at Normal & Insert mode)
autocmd filetype python,sh nnoremap <Leader>c ^i# 0
autocmd filetype python,sh inoremap <Leader>c ^i# 0
autocmd filetype python,sh nnoremap <Leader>nc ^dw
autocmd filetype python,sh inoremap <Leader>nc ^dw

set path+=**
