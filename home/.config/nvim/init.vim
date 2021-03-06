if &compatible"{{{
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('~/.cache/dein')


" Required:
call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

" Add or remove your plugins here like this:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')

call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})

" Required:
call dein#end()
call dein#save_state()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------}}}

" === Coc Plugins ===
" coc-jedi
" coc-vimlsp
" coc-json
" coc-tsserver

" === Fren.vim 操作方法 ===
" コマンド 	動作
" l 	フォルダを開く
" h 	フォルダを閉じる
" Return 	フォルダに潜る
" Ctr-h 	フォルダを1階層上に戻る
" o 	ファイル若しくはフォルダを開く
" ? 	コマンドのヘルプを開く
"
" === Vimspector 使い方 ===
" vimspector#Continue()

" <Plug>VimspectorContinue
" デバッグ中であれば、続きを実行。
" デバッグ中でなければ、デバッグを開始。
" vimspector#Stop()

" <Plug>VimspectorStop
" デバッグを停止
" vimspector#Restart()

" <Plug>VimspectorRestart
" 同じ設定で再実行
" vimspector#Pause()

" <Plug>VimspectorPause
" デバッグを一時停止
" vimspector#ToggleBreakpoint()

" <Plug>VimspectorToggleBreakpoint
" ブレークポイントを設定
" vimspector#StepOver()

" <Plug>VimspectorStepOver
" 次のステップ実行。（関数内部入らない）
" vimspector#StepInto()

" <Plug>VimspectorStepInto
" 次のステップ実行。（関数内部にも入る）
" vimspector#StepOut()

" <Plug>VimspectorStepOut
" 現在実行している、関数から抜けるまで実行。
" vimspector#Reset()

" :VimspectorReset
" デバッガーを完全に止める。


set runtimepath+=$HOME/.config/nvim/scripts/
set runtimepath+=$HOME/ablaze/ablaze.vim


let mapleader = "\<Space>"
" let mapleader = "<,>"


" Neovimの設定
syntax enable
" リーダーキーの設定

command Lazy :e ~/.config/nvim/dein_lazy.toml
command Source source $MYVIMRC" タブ切替

nnoremap <silent> <C-h> :bprev<CR>
nnoremap <silent> <C-l> :bnext<CR>
nnoremap <silent> <C-f> :bd<CR>

" ハイライトを有効にする
syntax enable
colorscheme tokyonight
let g:seiya_auto_enable=1

let g:python_host_prog = expand('~/nvim-python2/bin/python2')
let g:python3_host_prog = expand('/usr/bin/python3')

augroup TransparentBG
  	autocmd!
	autocmd colorscheme * highlight Normal ctermbg=none
	autocmd colorscheme * highlight NonText ctermbg=none
	autocmd colorscheme * highlight LineNr ctermbg=none
	autocmd colorscheme * highlight Folded ctermbg=none
	autocmd colorscheme * highlight EndOfBuffer ctermbg=none 
augroup END

" NERDTreeの設定
" autocmd vimenter * NERDTree" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <silent> <C-e> :NERDTreeToggle<CR>

"easymoationの設定
" s{char}{char} to move to {char}{char}
map <Leader> <Plug>(easymotion-prefix)
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
" nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
" map <Leader>j <Plug>(easymotion-j)
" map <Leader>k <Plug>(easymotion-k)

" Move to line
map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)

" HomeとEndをShiftとhlで代用
noremap <S-l>   $
noremap <S-h>   ^

" セミコロンでもコマンド入力ができるようにする
noremap ; :

nnoremap <Leader> m <C-w><C-w>
nnoremap <Leader> q :q<CR>
nnoremap <Leader> w :w<CR>

"行頭へ移動
inoremap <C-a> <C-o>^
"行末へ移動
inoremap <C-s> <C-o>$

nnoremap <C-a> ^
nnoremap <C-s> $

" C-xにBSの役割を割り当てる
inoremap <C-x> :<BS>

" キーの移動をわかりやすくする
noremap j  gj
noremap k  gk

" TABで候補を選択できるようにする
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" 補完表示時のEnterで改行をしない
inoremap <expr><CR>  pumvisible() ? "<C-y>" : "<CR>"
set completeopt=menuone

" Vimで日本語を書きやすくする
nnoremap あ a
nnoremap い i
nnoremap う u
nnoremap お o
nnoremap っd dd
nnoremap っy yy

" jjでエスケープ
inoremap <silent> jj <ESC>:w<CR>


" 日本語入力で”っj”と入力してもEnterキーで確定させればインサートモードを抜ける
inoremap <silent> っj <ESC>

noremap <Leader> g :Unite
nnoremap <c-g> <c-g>  :Unite 

command FishConfig e ~/.config/fish/config.fish


"行番号表示
set number


nnoremap <c-x> <Del>
inoremap <c-x> <Del>
nnoremap <c-/> :Commentary <CR> 

nnoremap <silent><Leader>f !black %:p

command Config e ~/.config/nvim/init.vim
command Plugins e ~/.config/nvim/dein.toml
command Scripts e  ~/.config/nvim/cmds.vim

" 自動保存の有効化
" let g:auto_save = 1

" 怒涛のお気に入り設定{{{
syntax on
set number
set expandtab
set hlsearch
set ignorecase
set incsearch
set smartcase
set autoindent
filetype plugin indent on
set wildmenu"}}}

" フォーマッタの実行
command! Black :!black %


"インサートモード時にカーソル移動する{{{
imap <c-h> <Left>
imap <c-j> <Down>
imap <c-k> <Up>
imap <c-l> <Right>"}}}

nnoremap <Esc><Esc> :noh<CR>
au FileType vim setlocal foldmethod=marker

nnoremap <Space>a za"{{{
nnoremap <Space>f zf
nnoremap <Space>d zd
nnoremap <Space>R zR
nnoremap <Space>M zM"}}}

inoremap <C-h> <BS>
" nnoremap <silent> <C-e> :Fern . -reveal=% -drawer -toggle -width=25<CR>

" ターミナルモードの設定
tnoremap <Esc> <C-\><C-n>
" command! -nargs=* T split | wincmd j | resize 20 | terminal <args>
autocmd TermOpen * startinsert


nnoremap K <Nop>
" Shiftで空行に移動
noremap <S-j>   }
noremap <S-k>   {
