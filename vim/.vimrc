"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -------------------------------------------------- Vundle ----------------------------------------------------
set linespace=1
set smarttab 						" 為html程序提供自動縮進
set background=dark
set ic
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
  let iCanHazVundle=0
endif

set nocompatible              " be iMproved, required
"filetype off                  " required
filetype indent on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"Plugin 'gmarik/vundle'
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

Plugin 'vim-scripts/taglist.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'wesleyche/SrcExpl'
Plugin 'mihaifm/bufstop'
Plugin 'ashwin/vim-powerline'
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" -------------------------------------------------- Vundle ----------------------------------------------------

" -------------------------------------------------- Taglist ----------------------------------------------------
let Tlist_Show_One_File=1              " 不同時顯示多個文件的tag，只顯示當前文件的
let Tlist_Sort_Type = "name"           " 按照名稱排序  
let Tlist_Enable_Fold_Column = 0       " 不要顯示摺疊樹  
let Tlist_GainFocus_On_ToggleOpen = 1  " 打開taglist時，游標保留在taglist窗口
"let Tlist_Auto_Open=1		         " 如果想在啟動VIM後自動打開taglist窗口，該參數設置為1
" let Tlist_Use_Right_Window = 1         " 在右側顯示窗口  
" let Tlist_File_Fold_Auto_Close = 0     " 不要關閉其他文件的tags  
" let Tlist_Exist_OnlyWindow = 1         " 如果taglist是最後一個窗口，則退出vim
" let Tlist_Compart_Format = 1           " 壓縮方式  
" Tlist_WinHeight		         " 設置taglist窗口的寬度
" Tlist_Close_On_Select		         " 如果想在選擇了tag後自動關閉taglist窗口，該參數設置為1
" -------------------------------------------------- Taglist ----------------------------------------------------

" -------------------------------------------------- PowerLine ----------------------------------------------------
"set guifont=PowerlineSymbols\ for\ Powerline
set guifont=Consolas\ for\ Powerline\ FixedD:h9
set nocompatible
set t_Co=256
let g:Powerline_symbols = 'fancy'
set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "狀態行顯示的內容  
" -------------------------------------------------- PowerLine ----------------------------------------------------

" -------------------------------------------------- NERDTree ----------------------------------------------------
hi Directory guifg=#FF0000 ctermfg=red
let g:NERDTreeWinPos = "right"
" -------------------------------------------------- NERDTree ----------------------------------------------------
"
" -------------------------------------------------- SrcExpl ----------------------------------------------------
" Do not let the Source Explorer update the tags file when opening 
let g:SrcExpl_isUpdateTags = 0
" -------------------------------------------------- SrcExpl ----------------------------------------------------

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set noautochdir 					" 不要自動切換當前目錄為當前文件所在的目錄

" set mouse=a
" n Normal mode  
" v Visual mode  
" i Insert mode  
" c Command-line mode  
" h all previous modes when in a help file  
" a all previous modes  
" r for |hit-enter| prompt  
" A auto-select in Visual mode

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Display Setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 我們可以使用:syntax enable命令，啟用語法高亮度。 Vim將會自動識別關鍵字、字符串以及其他語法元素，並以不同的顏色顯示出來。
" 如果不希望高亮顯示語法元素，可以使用:syntax clear命令關閉此功能。
" 以上命令只在當前文件中有效。而以下命令則對所有緩衝區中的文件立刻生效。
" 我們可以使用set syntax=off命令關閉語法高亮度；使用:syntax on命令打開語法高亮度。
syntax enable 					
syntax on
highlight Comment ctermfg=darkcyan			" 將註解由深藍色變淺藍色

" 配色方案
" 至 http://code.google.com/p/vimcolorschemetest/ 並放置於 ~/.vim/colors
" 使用 :color 顥示現在配色方案
"autocmd BufRead *.[ch] colorscheme desert256
"autocmd BufRead *.java colorscheme ansi_blows

set nu							" 顯示行號  
highlight LineNr guibg=darkgrey guifg=white ctermbg=darkgrey ctermfg=11 
"set showcmd						" 輸入的命令顯示出來，看的清楚些  
set cmdheight=1						" 命令行（在狀態行下）的高度，設置為1
set hlsearch						" 搜尋到的字加 hilight

""顏色的前景色與背景色要如何PS: vim 7.0 以上才支援此設定 
""Please refer to file Xterm-color-table.png
highlight cursorline cterm=none ctermbg=3 ctermfg=0
set cursorline						" Line highlight 游標整行會標註顏色
"highlight cursorline guibg=0 guifg=9 ctermbg=6 ctermfg=0 
"set cursorcolumn					" Column highlight 游標整列會標註顏色

set ruler						" 編輯時顯示游標狀態
""autocmd InsertLeave * se nocul				" 用淺色高亮當前行  
""autocmd InsertEnter * se cul				" 用淺色高亮當前行  
set foldenable						" 允許摺疊  
set foldmethod=manual					" 手動摺疊  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Display Setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Format Setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

" 可以從vim的說明中看到，一旦設置了softtabstop的值時，你按下tab鍵，插入的是空格和tab製表符的混合，具體如何混合取決於你設定的
" softtabstop和tabstop，舉個例子，如果設定softtabstop=8, tabstop=8, 那麼按下tab鍵，插入的就是正常的一個製表符;如果設定 
" softtabstop=16, tabstop=8, 那麼插入的就是兩個製表符；如果softtabstop=12, tabstop=8, 那麼插入的就是一個製表符加上4個空格；
" 如果 softtabstop=4, tabstop=8呢？那麼一開始，插入的就是4個空格，此時一旦你再按下一次tab，這次的四個空格就會和上次的四個空
" 格組合起來變成一個製表符。
" set softtabstop=4
"set noexpandtab 				 	" 不用空格代替製表符
set expandtab

" 默認值為off。off時[TAB]鍵將依據 tabstop 或 softtabstop 插入。.而shiftwidth 僅用在左右平移文本時。 on時,在插入行前按下[TAB]
" 鍵時將根據 shiftwidth 插入相應的空白符。 tabstop 或 softtabstop  此時就用在別處.
"set smarttab

"set ignorecase						" 忽略大小寫
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Format Setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ShortKey Setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"nmap <F7> :make clean;make<CR>
nmap <F7> :!./ma<CR>
nmap <F8> :copen<CR>
nmap <F9> :Tlist<CR>
nmap <F10> :NERDTree<CR>
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

"if has("cscope")
"	set csto=0
"	set cst
"	set nocsverb
"	if filereadable("cscope.out")
"		cs add cscope.out
"	endif
"	set csverb
"endif

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

"For Albert Tmux
if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif


"map <C-r> ggVGY 
"映射全選+複製 ctrl+a
"map! <C-A> <Esc>ggVGY

"map <F9> :call CompileRunGcc()<CR>
"func! CompileRunGcc()
"	exec "w"
"	if &filetype == 'c'
"		exec "!g++ % -o %<"
"		exec "! ./%<"
"		elseif &filetype == 'cpp'
"		exec "!g++ % -o %<"
"		exec "! ./%<"
"	elseif &filetype == 'java' 
"		exec "!javac %" 
"		exec "!java %<"
"	endif
"endfunc

""C,C++的調試
"map <F10> :call Rungdb()<CR>
"func! Rungdb()
"	exec "w"
"	exec "!g++ % -g -o %<"
"	exec "!gdb ./%<"
"endfunc
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ShortKey Setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Useful Command 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ---------------------------------------------------- 揷入 ------------------------------------------------------
" 連續插入72 個等號: 按ESC進入Normal mode，輸入72i=再按ESC即可。

" 在多行開始插入// : 移動遊標到需要註釋的第一行開頭，然後按Ctrl-v 進入Visual blockwise模式，然後按j選擇所有需要
" 註釋行的行首，輸入I//, 再按ESC就可以在每一行開頭插入//了。

" ---------------------------------------------------- 視窗 ------------------------------------------------------
" 分割垂直視窗: <Ctrl-W> v
" 分割水平視窗: <Ctrl-W> s
" 關閉視窗: <Ctrl-W> q
" 留下目前視窗並且關閉其他視窗: <Ctrl-W> o
" 
" 於分割視窗開新檔案: <Ctrl-W> n
" 
" 切換:
" 切換到下方視窗: <Ctrl-W> j
" 切換到上方視窗: <Ctrl-W> k
" 切換到左方視窗: <Ctrl-W> h
" 切換到右方視窗: <Ctrl-W> l
" 切換到下一個視窗: <Ctrl-W><Ctrl-W>
" 
" 調整大小
" 
" 調整視窗垂直大小: <Ctrl-W> [+|-]
" 調整視窗水平大小: <Ctrl-W> [<|>]
" 
" 將目前視窗垂直打開到最到: <Ctrl-W> _
" 將目前視窗水平打開到最大: <Ctrl-W> |
" :help windows

" ----------------------------------------------------  ------------------------------------------------------
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Useful Command 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Old data
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -------------------------------------------------- pathogen ----------------------------------------------------
" 來源：https://github.com/tpope/vim-pathogen
"execute pathogen#infect()

"let g:neocomplcache_enable_at_startup = 1

" ---------------------------------------------------- ctags -----------------------------------------------------
" 簡介：尋找函數，變數，巨集的定義
" 來源：http://ctags.sourceforge.net
" 用法：將游標移動到要尋找的函數，變數，巨集上，用 C+] 來尋找各種“定義”的位置, C+t 回原位置
" 說明：
" Vim 使用 tags 檔案來搜尋各種函數，變數，巨集的定義處，Vim 啟動時，㑹自動載入工作目錄（vim 啟動時的所在目錄）下名為 tags 的檔案，
" $VIMRUNTIME/doc 及 $HOME/.vim/doc 目錄下的 tags 檔也會自動載入。而且，凡是載入的 tags 檔裡頭所有標誌文字都可以使用補全鍵來補全
" 也可以使用以下命令來設定 tags 檔案的位置
" :set tags=/home/ivanlee/work/projects/tags
" 
" tags文件是由ctags程序產生的一個索引文件, ctags程序其是叫"Exuberant Ctags", 是Unix上面ctags程序的替代品
" tags 檔案的製作
" 在 source code 目錄下，使用以下指令來產生 tags 檔案：
" ctags -R *
" 這樣會在 source code 目錄下產生一個 tags 這個檔（可以使用 -f 選項來指定檔案名），裡頭就包含了整個 source code 的所有檔案的 tags 資訊，
" 包括其下所有的子目錄下的檔案。

" --------------------------------------------------- TagList ----------------------------------------------------
" 簡介：列出了當前文件中的所有函數，變數，巨集名
" 來源：http://www.vim.org/scripts/script.php?script_id=273
" 來源：https://github.com/vim-scripts/taglist.vim
" 用法：進入 Vim 後用命令 :Tlist 打開 taglist 窗口, 將游標移動到函數（或是變數，巨集）上，按下 Enter 後，程式碼會自動跳轉到定義處
" 說明：
" 至 http://www.vim.org/scripts/script.php?script_id=273 下載, 並在 ~/.vim 目錄下解壓taglist_xx.zip 即可使用
" 在瀏覽 TagList 窗口時, 如果還不想讓程式碼跳轉, 但是想看看 tag 在源碼中完整的表達, 可以將光標移到你想要看的tag上, 然後按下空格鍵,
" 在下面的命令欄中, 會顯示該tag在源碼中完整的寫法, 而不會跳轉到源碼處.
" TagList 有一份詳細的幫助手冊, 用命令 :e ~/.vim/doc/taglist.txt
" 操作方式:
"	通過游標選擇tag，回車可以跳到定義該tag的程序位置
"	選中tag時按空格鍵，會在狀態欄下方顯示該tag的完整定義
"	x，橫向放大或縮小taglist窗口
"	=，摺疊所有的tag
"	+，打開所有的tag
"let Tlist_Show_One_File=1              " 不同時顯示多個文件的tag，只顯示當前文件的
"let Tlist_Sort_Type = "name"           " 按照名稱排序  
"let Tlist_Enable_Fold_Column = 0       " 不要顯示摺疊樹  
"let Tlist_GainFocus_On_ToggleOpen = 1  " 打開taglist時，游標保留在taglist窗口
"let Tlist_Auto_Open=1		         " 如果想在啟動VIM後自動打開taglist窗口，該參數設置為1
"let Tlist_Use_Right_Window = 1         " 在右側顯示窗口  
"let Tlist_File_Fold_Auto_Close = 0     " 不要關閉其他文件的tags  
"let Tlist_Exist_OnlyWindow = 1         " 如果taglist是最後一個窗口，則退出vim
"let Tlist_Compart_Format = 1           " 壓縮方式  
"Tlist_WinHeight		         " 設置taglist窗口的寬度
"Tlist_Close_On_Select		         " 如果想在選擇了tag後自動關閉taglist窗口，該參數設置為1

" -------------------------------------------------- PowerLine ---------------------------------------------------
" 來源：https://github.com/Lokaltog/vim-powerline
" 來源：https://github.com/ashwin/vim-powerline
" 來源：http://codejury.com/consolas-font-in-vim-powerline-windows/
"set guifont=PowerlineSymbols\ for\ Powerline
"set guifont=Consolas\ for\ Powerline\ FixedD:h9
"set nocompatible
"set t_Co=256
"let g:Powerline_symbols = 'fancy'
"set laststatus=2
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "狀態行顯示的內容  

" -------------------------------------------------- NERDTREE ----------------------------------------------------
" 來源：https://github.com/scrooloose/nerdtree
"hi Directory guifg=#FF0000 ctermfg=red

" ---------------------------------------------------  cscope -----------------------------------------------------
" 簡介：超頻版的 ctags 
" 來源：http://cscope.sourceforge.net/
" 用法：
" 說明：
" cscope 被設計用來回答以下的問題:
" * 什麼地方用到了這個符號？
" * 這是在什麼地方定義的？
" * 這個變數在哪裡被賦值？
" * 這個全局符號的定義在哪裡？
" * 這個函數在源文件中的哪個地方？
" * 哪些函數調用了這個函數？
" * 這個函數調用了哪些函數？
" * ....
" 
" cscope 跟 ctags 一樣, 要使用其功能必須先為你的代碼生成一個 cscope 的資料庫，請在工作目䤸命令列中使用以下指令產生 cscope 資料庫檔案：
" $cscope -Rbq
" cscope 㑹在工作目錄下產生三個文件，cscope.in.out, cscope.out, cscope.po.out, vim 啟動時，㑹自動載入工作目錄下名為 cscope.out 的檔案，
" 或者也可以使用以下方法來載入 cscope 資料庫檔案:
" :cs add cscope.out
" 加入資料庫檔案之後，便可以在命令列上使用以下方式來查找資料
" :cs find 功能 函數（變數，巨集）
" 或是使用 :cs 命令來查看用法

" ---------------------------------------------------  bufstop -----------------------------------------------------
" 來源：https://github.com/mihaifm/bufstop

" ---------------------------------------------------  新文件標題---------------------------------------------------
" 新建.c,.h,.sh,.java文件，自動插入文件頭 
"autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java exec ":call SetTitle()" 
" 定義函數SetTitle，自動插入文件頭 
"func! SetTitle() 
" 如果文件類型為.sh文件 
"if &filetype == 'sh' 
"	call setline(1,"\#!/bin/bash") 
"	call append(line("."), "\#########################################################################") 
"	call append(line(".")+1, "\# File Name: ".expand("%")) 
"	call append(line(".")+2, "\# Author: ivanlee") 
"	call append(line(".")+3, "\# mail: ivanlee@ami.com.tw") 
"	call append(line(".")+4, "\# Created Time: ".strftime("%c")) 
"	call append(line(".")+5, "\#########################################################################") 
"	call append(line(".")+6, "") 
"else 
"	call setline(1, "/*************************************************************************") 
"	call append(line("."), "     File Name: ".expand("%")) 
"	call append(line(".")+1, "     Author: ivanlee") 
"	call append(line(".")+2, "     Mail: ivanlee@ami.com.tw ") 
"	call append(line(".")+3, "     Created Time: ".strftime("%c")) 
"	call append(line(".")+4, " ************************************************************************/") 
"	call append(line(".")+5, "")
"endif
"
"if &filetype == 'cpp'
"	call append(line(".")+6, "#include<iostream>")
"	call append(line(".")+7, "using namespace std;")
"	call append(line(".")+8, "")
"endif
"
"if &filetype == 'c'
"	call append(line(".")+6, "#include <stdio.h>")
"	call append(line(".")+7, "")
"endif
"endfunc 

" 新建文件後，自動定位到文件末尾
"autocmd BufNewFile * normal G
"

" -------------------------------------------------------------------
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

"set clipboard=unnamedplus
set clipboard=unnamed
