set showmode 
""
""设置更好的删除
set backspace=2
"
syntax on "语法高亮
"
set confirm "在处理未保存或只读文件的时候，弹出确认框



""用浅色高亮当前行
"autocmd InsertLeave * se nocul
"autocmd InsertEnter * se cul
"
""set cursorline 


"set autoindent "自动对齐, 每行的缩进值与上一行相等，使用 set noautoindent 可以取消设置, 当你在输入状态用回车键插入一个新行，或者在 normal 状态用 o 或者 O 插入一个新行时，autoindent 会自动地将当前行的缩进拷贝到新行，也就是 自动对齐

"set cindent，它会按照 C 语言的语法，自动地调整缩进的长度，比如，当你输入了半条语句然后回车时，缩进会自动增加一个 TABSTOP 值，当你键入了一个右花括号时，会自动减少一个 TABSTOP 值。

set smartindent  "在这种缩进模式中，每一行都和前一行有相同的缩进量，同时这种缩进形式能正确的识别出花括号，当遇到右花括号（}），则取消缩进形式。此外还增加了识别C语言关键字的功能。如果一行是以#开头的，那么这种格式将会被特殊对待而不采用缩进格式。




set tabstop=4 "tab键显示的宽度
set softtabstop=4  "软制表符表示在Insert模式的时候按退格键时退回缩进的长度，当使用expandtab 时特别有用。
set shiftwidth=4 "统一缩进为4
set expandtab "不要用空格替代制表符,讲tab键自动展开成空格

"可使用如下命令来对设置只对特定类型文件启用expandtab，
if has("autocmd")
    autocmd BufRead,BufNewFile *.c, *.h, *.py set expandtab
endif


set number "显示行号
set history=50  "历史纪录数
set hlsearch
set incsearch "搜素高亮,搜索逐渐高亮
"
set relativenumber
set gdefault "行内替换
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936,utf-16,big5,euc-jp,latin1 "编码设置
"
colorscheme slate 
""colorscheme twilight
"
set guifont=Menlo:h16:cANSI "设置字体
set langmenu=zn_CN.UTF-8
set helplang=cn  "语言设置
"
set ruler "在编辑过程中，在右下角显示光标位置的状态行
"
"
set showcmd "在状态行显示目前所执行的命令，未完成的指令片段也会显示出来
"
set showmatch "高亮显示对应的括号
set matchtime=5 "对应括号高亮时间(单位是十分之一秒)
"
set autowrite "在切换buffer时自动保存当前文件
"
set wildmenu  "增强模式中的命令行自动完成操作

set colorcolumn=81 "设置80字符提醒




"set paste 

""set laststatus=2  "总是显示状态行
""highlight StatusLine cterm=bold ctermfg=yellow ctermbg=blue
""" 获取当前路径，将$HOME转化为~
""function! CurDir( )
""    let curdir = substitute( getcwd( ), $HOME, "~", "g")
""    return curdir
""endfunction 
"""set statusline=%t\ %y\ format:\ %{&ff};\ [e%c,%l]
""
""set statusline=[%n]\ %f%m%r%h\ \|\ \ pwd:\ %{CurDir()}\ \ \|%=\|\ %l,%c\ %p%%\ \|\ ascii=%b,hex=%b%{((&fenc==\"\")?\"\":\"\ \|\ \".&fenc)}\ \|\ %{$USER}\ @\ %{hostname()}\
""
""
"""set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]


set laststatus=2
set statusline=%F\ [%{&fenc}\ %{&ff}\ L%l/%L\ C%c]\ %=%{strftime('%Y-%m-%d\ %H:%M')} 


set foldenable  "允许折叠
set background=dark
set t_Co=256   "256色
set mouse=a  "允许鼠标
"
"set clipboard=unnamed
set pastetoggle=<f12>
" YouCompleteMe
set runtimepath+=~/.vim/bundle/YouCompleteMe
let g:ycm_collect_identifiers_from_tags_files = 1           " 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion = 3 " 从第3个键入字符就开始罗列匹配项
let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 注释与字符串中的内容也用于补全
let g:syntastic_ignore_files=[".*\.py$"]
let g:ycm_seed_identifiers_with_syntax = 1                  " 语法关键字补全
let g:ycm_complete_in_comments = 1
let g:ycm_confirm_extra_conf = 0
"let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']  " 映射按键, 没有这个会拦截掉tab, 导致其他插件的tab不能用.
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
let g:ycm_complete_in_comments = 1                          " 在注释输入中也能补全
let g:ycm_complete_in_strings = 1                           " 在字符串输入中也能补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 注释和字符串中的文字也会被收入补全
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 0                           " 禁用语法检查
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>" |            " 回车即选中当前项
nnoremap <c-j> :YcmCompleter GoToDefinitionElseDeclaration<CR>|     " 跳转到定义处


inoremap ( ()<Esc>i 
inoremap [ []<Esc>i
inoremap { {<CR>}<Esc>O
autocmd Syntax html,vim inoremap < <lt>><Esc>i| inoremap > <c-r>=ClosePair('>')<CR>
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap ] <c-r>=ClosePair(']')<CR>
inoremap } <c-r>=CloseBracket()<CR>
inoremap " <c-r>=QuoteDelim('"')<CR>
inoremap ' <c-r>=QuoteDelim("'")<CR>
"
"
"
function ClosePair(char)
 if getline('.')[col('.') - 1] == a:char
 return "\<Right>"
 else
 return a:char
 endif
endf
"
"
"
function CloseBracket()
 if match(getline(line('.') + 1), '\s*}') < 0
 return "\<CR>}"
 else
 return "\<Esc>j0f}a"
 endif
endf
" 
"
function QuoteDelim(char)
 let line = getline('.')
 let col = col('.')
 if line[col - 2] == "\\"
 return a:char
 elseif line[col - 1] == a:char
 return "\<Right>"
 else
 return a:char.a:char."\<Esc>i"
 endif
endf




