" -------------------------- Plugin Setting ------------------------ "
" -------------------------- Vundle -------------------------------- "
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
  let iCanHazVundle=0
endif

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle
call vundle#begin()

" --------To install plugin, issue `:PluginInstall` in vim --------- "

" let Vundle manage Vundle, required
"Plugin 'gmarik/vundle'
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

Plugin 'vim-scripts/taglist.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'wesleyche/SrcExpl'
Plugin 'mihaifm/bufstop'
Plugin 'sonph/onehalf'
Plugin 'powerline/powerline'
"Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Color scheme
" cp /home/albertlin/.vim/bundle/onehalf/vim/colors/onehalfdark.vim
" /home/albertlin/.vim/colors/
colorscheme onehalfdark
let g:airline_theme='onehalfdark'

" -------------------------------------------------- Taglist ----------------------------------------------------
let Tlist_Show_One_File=1              " 不同時顯示多個文件的tag，只顯示當前文件的
let Tlist_Sort_Type = "name"           " 按照名稱排序  
let Tlist_Enable_Fold_Column = 0       " 不要顯示摺疊樹  
let Tlist_GainFocus_On_ToggleOpen = 1  " 打開taglist時，游標保留在taglist窗口
" let Tlist_Auto_Open=1		           " 如果想在啟動VIM後自動打開taglist窗口，該參數設置為1
" let Tlist_Use_Right_Window = 1       " 在右側顯示窗口  
" let Tlist_File_Fold_Auto_Close = 0   " 不要關閉其他文件的tags  
" let Tlist_Exist_OnlyWindow = 1       " 如果taglist是最後一個窗口，則退出vim
" let Tlist_Compart_Format = 1         " 壓縮方式  
" Tlist_WinHeight		               " 設置taglist窗口的寬度
" Tlist_Close_On_Select		           " 如果想在選擇了tag後自動關閉taglist窗口，該參數設置為1
" -------------------------------------------------- Taglist ----------------------------------------------------

" -------------------------------------------------- NERDTree ----------------------------------------------------
hi Directory guifg=#FF0000 ctermfg=red
let g:NERDTreeWinPos = "right"
" -------------------------------------------------- NERDTree ----------------------------------------------------
"
" -------------------------------------------------- SrcExpl ----------------------------------------------------
" Do not let the Source Explorer update the tags file when opening 
let g:SrcExpl_isUpdateTags = 0
" -------------------------------------------------- SrcExpl ----------------------------------------------------

" General Setting
set noautochdir    " 不要自動切換當前目錄為當前文件所在的目錄
set ic             " Ingore case while searching
set linespace=1
set nocompatible   " required for advanced feature than old school `vi`

" Display Setting
syntax enable 					
syntax on
set nu							                      " 顯示行號  
set cmdheight=1						                  " 命令行（在狀態行下）的高度，設置為1
set hlsearch						                  " 搜尋到的字加 hilight
set cursorline						                  " Line highlight 游標整行會標註顏色
highlight Cursor guifg=white guibg=black
highlight cursorline cterm=none ctermbg=3 ctermfg=0
set ruler						                      " 編輯時顯示游標狀態
set foldenable						                  " 允許摺疊  
set foldmethod=manual					              " 手動摺疊  

" Format Setting
set encoding=utf-8
set fileencoding=utf-8
set autoread 						" 設置當文件被改動時自動載入
set autowrite 						" 自動保存
set confirm			    			" 在處理未保存或只讀文件的時候，彈出確認
set autoindent 						" 自動縮進
set cindent
set smartindent 					" 為C程序提供自動縮進
set shiftwidth=4					" (自動) 縮進每一步使用的空白數目
set tabstop=4		    			" <Tab> 代表的空格數
set noexpandtab 				 	" 不用空格代替製表符
"set expandtab

" -------------------------- ShortKey Setting ----------------------- "
nmap <F9> :Tlist<CR>
nmap <F10> :NERDTreeToggle<CR>
nmap <F11> :SrcExplToggle<CR>
nmap <F12> :BufstopFast<CR>

map <C-H> <C-W>h
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l

" 因為使用 cs 命令來查找 cscope 資料太煩，所以設定了一些快捷鍵，快捷鍵的用法是將游標移動到你要查找的函數（變數，巨集）上，按下
" "Ctrl + ["，之後再快速按下功能鍵(s, g, d, c, t, e, f, i),
" 這裡的技巧是必需“快速”的按下功能鍵

nmap <C-[>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-[>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-[>d :cs find d <C-R>=expand("<cword>")<CR><CR>
nmap <C-[>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-[>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-[>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-[>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-[>i :cs find i <C-R>=expand("<cfile>")<CR>$<CR>

set tags=tags;/                     "自動加入ctags database

"自動加入cscope.out(取代:cs add /database)
function! LoadCscope()
  let db = findfile("cscope.out", ".;")
  if (!empty(db))
    let path = strpart(db, 0, match(db, "/cscope.out$"))
    set nocscopeverbose " suppress 'duplicate connection' error
    exe "cs add " . db . " " . path
    set cscopeverbose
  endif
endfunction
au BufEnter /* call LoadCscope()
" -------------------------- ShortKey Setting ----------------------- "

" ------------------------ Copy & Paste Setup ----------------------- "
" sudo apt-get install vim-gtk3
" Copy a block of text to the system clipboard, 
" and make it can paste in another program

" **Debian & Ubuntu: Install vim-gtk or vim-gnome.**

" For X11-based systems (ie. Linux and most other UNIX-like systems) 
" there are two clipboards which are independent of each other:

" 1. PRIMARY - This is copy-on-select, and can be pasted with the mouse button.
" 2. CLIPBOARD - This is copied with ^C, and pasted with ^V (Like MS Windows).
" OS X and Windows systems only have one clipboard.

" Vim has two special registers corresponding to these clipboards:

" 1. * uses PRIMARY; mnemonic: Star is Select (for copy-on-select)
" 2. + uses CLIPBOARD; mnemonic: CTRL PLUS C (for the common keybind)

" You can use these registers as any register. 
" For example, using the PRIMARY clipboard * with the y and p commands:

" 1. "*yy
" 2. "*p

"noremap <Leader>y "*y
"noremap <Leader>p "*p
"noremap <Leader>Y "+y
"noremap <Leader>P "+p

" On Linux
set clipboard=unnamedplus
" On macOS and Windows
"set clipboard=unnamed
" ------------------------ Copy & Paste Setup ----------------------- "

" ------------------------ Powerline -------------------------------- "
" pip3 install powerline-status
" mkdir -p .config/powerline
" cp -r ~/.vim/bundle/powerline/powerline/config_files/* ~/.config/powerline/
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set laststatus=2
set t_Co=256
" ------------------------ Powerline -------------------------------- "

" For Albert Tmux Compatibility
if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif

