filetype plugin indent on

" Turn on syntax highlighting
syntax enable
set background=dark

if has("gui_macvim")
  let macvim_hig_shift_movement = 1
endif

" ######################
" MAPPINGS
" ######################

" Mapping leader to backspace
let mapleader = ',' 

" Unmap the arrow keys
no <left> <Nop>
no <down> <Nop>
no <up> <Nop>
no <right> <Nop>
ino <left> <Nop>
ino <down> <Nop>
ino <up> <Nop>
ino <right> <Nop>

" ###############
" Multiple Tabs
" ###############
" Help : The | separates commands in vim. So to add comments in the same line I used |.
nnoremap tn :tabnew<Space>|     " type 'tn' for :newtab
nnoremap tj :tabnext<CR>|       " type 'tj' to goto next tab 
nnoremap tk :tabprev<CR>|       " type 'tk' to goto prev tab
nnoremap th :tabfirst<CR>|      " type 'th' to goto first tab
nnoremap tl :tablast<CR>|       " type 'tl' to goto last tab
                                " type 5gt to goto 5th tab
nnoremap tc :tabc<CR>|          " type 'tc' to close current tab
                                " :tabo to close other tabs
nnoremap ts :tabs<CR>|          " type 'ts' to see all open tabs 
nnoremap tm :tabm|              " type 'tm' and then specify where
															  " to move the tab to i.e., -2 , +2 

"press space to turn off highlighting
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR> 


" Tab and Shift+Tab in normal mode, insert mode and visual mode to indent
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" Reloading .vimrc using <leader>r
nnoremap <leader>r :source<Space>$MYVIMRC<CR>

" ###############
" Pane Settings
" ###############
nmap <leader>- :split<Space>|        " <leader>- for horizontal split
nmap <leader>\ :vsplit<Space>|       " <leader>\ for vertical split
nnoremap <leader>h <C-w><C-h>        " Use <leader>h to move to left pane
nnoremap <leader>j <C-w><C-j>        " Use <leader>j to move to lower pane
nnoremap <leader>k <C-w><C-k>        " Use <leader>k to move to upper pane
nnoremap <leader>l <C-w><C-l>        " Use <leader>l to move to right pane
nnoremap <leader>+ <C-w>+            " Use <leader>+ to increase panes height
nnoremap <leader>_ <C-w>-            " Use <leader>_ to decrease panes height
nnoremap <leader>= <C-w>=            " Use <leader>= to make all panes of similar size
nnoremap <leader>> <C-w>>            " Use <leader>> to increase width of the panel
nnoremap <leader>< <C-w><            " Use <leader>< to decrease width of the panel
nnoremap <leader>z <C-w><C-_><C-w>\| " Use <leader>z to zoom the pane and <leader>= to restore to equal sizes
nnoremap <leader>Z <C-w>T            " Use <leader>Z to move pane to new tab window
nnoremap <leader>x <C-w>x            " Use <leader>x to swap pane with the previous pane
nnoremap <leader>X <C-w>o            " Use <leader>X to close all other panes other than the current one



" ######################
" SETTINGS
" ######################

set number                " turning on line numbers

set laststatus=2          " Turning on the status bar

set incsearch             " show search results as I type
set hlsearch              " highlight all search results

" Indentation Settings
set tabstop=2
set shiftwidth=2
set softtabstop=0
set noexpandtab           " disabled spaces over tabs 
set copyindent            " copy indent to the next line 
set preserveindent

set pastetoggle=<F3>      " Paste mode toggling

set scrolloff=5           " How previous and next 5 lines when moving	

set fillchars=vert:\•     " Setting Vertical Split Charater to • (not dot) (utf 8 char) (alt + 8 on mac)

set splitbelow            " Open Horizontal Split Panes below
set splitright            " Open Vertical Split Panes to the right

" Fetch keywords for keyword completion from (use comma separated values)
" . - scan from current buffer
" w - scan from other windows
" b - scan other loaded buffers from buffer list
" u - scan other unloaded buffers from buffer list
" ] - tag completion
set complete=.,w,b,u,]

" ################
" Number Panel
" ################

highlight LineNr ctermbg=235
highlight LineNr ctermfg=242

" Status bar fg  and bg
highlight StatusLine ctermbg=235 ctermfg=250

" Non-current window's status bar fg and bg
highlight StatusLineNC ctermbg=235 ctermfg=240

" Color for the Vertical Split 
highlight VertSplit ctermbg=235 ctermfg=240

" Tab Bar Customization
highlight TabLine ctermbg=235 ctermfg=242
highlight TabLineFill ctermbg=235 ctermfg=242
highlight TabLineSel ctermbg=235 ctermfg=250
