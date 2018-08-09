execute pathogen#infect()
filetype plugin indent on

"======> identation settings go here
set tabstop=4
set autoindent
set cindent
set shiftwidth=4

"======> ide-like plugins go here
set nu
set relativenumber
set foldcolumn=0
"autocmd vimenter * NERDTree
nnoremap <C-P> :NERDTreeToggle<CR>
let NERDTreeStatusline=''

"======> color scheme settins go here
"let base16colorspace=256  " Access colors present in 256 colorspace
set t_Co=256
colorscheme base16-tomorrow-night
let python_highlight_all=1
let g:javascript_plugin_jsdoc=1
syntax on

hi CursorLine ctermfg=DarkGray
hi LineNr ctermbg=BLACK ctermfg=darkgray

let &t_ut=''  " Access colors present in 256 colorspace
hi MatchParen cterm=underline ctermbg=Black ctermfg=White
hi PmenuSel cterm=none ctermbg=gray ctermfg=black
hi TODO ctermfg=yellow ctermbg=black
set cursorline
hi cursorline ctermfg=none ctermbg=none
hi CursorColumn ctermfg=gray ctermbg=black
hi Comment ctermfg=darkgray
hi cursorlinenr ctermfg=gray ctermbg=black
hi Visual ctermfg=gray ctermbg=darkgray
"here we are going to be doing some tabline stuff
"set showtabline=2
hi TabLineFill ctermfg=darkgray ctermbg=none
hi TabLine ctermfg=darkgray ctermbg=black cterm=underline
hi TabLineSel ctermfg=gray ctermbg=black cterm=underline

" here we are going to set some highlighting for splits
hi StatusLine ctermfg=none ctermbg=black
hi StatusLineNC ctermfg=darkgray ctermbg=black
hi VertSplit ctermfg=gray ctermbg=black

" we are going to set the Pmenu colors
hi Pmenu ctermfg=gray ctermbg=darkgray
hi LineNR ctermfg=darkgray ctermbg=black

"here we are going to set something to show trailing whitespaces
highlight ExtraWhitespace ctermfg=yellow ctermbg=none guibg=none cterm=underline
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
"======> mapping some keys
imap jj <Esc>
set timeoutlen=350
"we have to map some keys for the tabs"
map <C-J> :tabp<ENTER>
map <C-K> :tabn<ENTER>
map <C-c> :q!<ENTER>
map <C-E> :tabe 

"======> lets go ahead and get a statusbar
function! GitBranch()
	return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction
"
"function! StatuslineGit()
"	let l:branchname = GitBranch()
"	return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
"endfunction
"
let g:airline_theme='base16_tomorrow'
"let g:airline_section_a = '%{GitBranch()}'
"let g:airline_section_a+='%#LineNr#'

let g:airline_section_a = ' %{gitbranch#name()} ⎇ '
let g:airline_section_b = ''
let g:airlien_section_c = ''
let g:airline_section_y = ''
let g:airline_section_x = '%{&fileencoding?&fileencoding:&encoding} %{&fileformat} %y %l:%c'
let g:airline_section_z = ''
let g:airline_section_warning = ''
set showmode
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = '>'
"let g:airline#extensions#tabline#left_alt_sep = '>'
"let g:airline#extensions#tabline#formatter = 'unique_tail'

"======> misc
set mouse=a
