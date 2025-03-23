set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on
set nowrap
set mouse=a
set encoding=utf-8
set fileencoding=utf-8
set number relativenumber
set cursorline
set cursorcolumn
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set nobackup
set scrolloff=8
set incsearch
set ignorecase
set smartcase
set showcmd
set showmode
set showmatch
set hlsearch
set wildmenu
set wildmode=full
set wildignore=*.docx,*.jpg,*.jpeg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx,*.mpeg,*.mp3,*.mp4,*.webp,*.webm,*.mov,*.avif
set clipboard+=unnamedplus
set nofoldenable
set smartindent
set smarttab
set termguicolors
set showtabline=2
set colorcolumn=80,100,120

set statusline=
set statusline+=%F\ %M\ %Y\ %R
set statusline+=%=
set statusline+=ascii:%b\ hex:0x%B\ row:%l\ col:%c\ %p%%
set errorformat+=%f\|%l\ col\ %c\|%m
" set updatetime=50

autocmd Filetype java setlocal ts=4 sw=4 sts=0
autocmd Filetype python setlocal ts=4 sw=4 sts=0

nnoremap N Nzz
nnoremap n nzz

nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

colorscheme challenger_deep

call plug#begin('~/.vim/plugged/')
  Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'luochen1990/rainbow'
  Plug 'yggdroot/indentline'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'townk/vim-autoclose'
" Plug 'ap/vim-css-color'
  Plug 'gko/vim-coloresque'
  Plug 'challenger-deep-theme/vim'
  Plug 'morhetz/gruvbox'
  Plug 'yuk1h1ra/transparent.vim'
" Plug 'vimsence/vimsence'
  Plug 'andweeb/presence.nvim'
  Plug 'kana/vim-submode'
" Plug 'tweekmonster/local-indent.vim'
  Plug 'apzelos/blamer.nvim'
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'unblevable/quick-scope'

" Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'

" TODO: consider allowing all plugins to be loaded and see if it impacts
" performance negatively.

  Plug 'alvan/vim-closetag', { 'for': ['html', 'xhtml', 'xml'] }
  Plug 'mattn/emmet-vim', { 'for': ['html', 'xhtml', 'xml'] }
  Plug 'valloric/matchtagalways', { 'for': ['html', 'xhtml', 'xml'] }

  Plug 'mechatroner/rainbow_csv', { 'for': 'csv' }

" Plug 'valloric/youcompleteme', { 'for': ['rust', 'go', 'lua', 'c', 'cpp', 'python', 'java', 'kotlin'] }
" Plug 'weirongxu/coc-explorer'
" Plug 'neoclide/coc.nvim', { 'branch': 'release', 'for': ['rust', 'go', 'lua', 'c', 'cpp', 'python', 'java', 'kotlin'], 'on': 'CocInstall' }
"  Plug 'neoclide/coc.nvim', { 'branch': 'release' }
"  Plug 'neoclide/coc-snippets' ", { 'for': ['rust', 'go', 'lua', 'c', 'cpp', 'python', 'java', 'kotlin'] }
" Plug 'neoclide/coc-pairs'
" Plug 'neoclide/coc-highlight'
  Plug 'airblade/vim-gitgutter' ", { 'for': ['rust', 'go', 'lua', 'c', 'cpp', 'python', 'java', 'kotlin'] }
  Plug 'apzelos/blamer.nvim' ", { 'for': ['rust', 'go', 'lua', 'c', 'cpp', 'python', 'java', 'kotlin'] }
  Plug 'tpope/vim-commentary'

" Plug 'julialang/julia-vim'
" Plug 'sirver/ultisnips'
" Plug 'autozimu/languageclient-neovim'
" Plug 'w0rp/ale'

" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
call plug#end()

" if version >= 703
"   set undodir=~/.vim/backup
"   set undofile
"   set undoreload=10000
" endif

" let g:indent_guides_enable_on_vim_startup=1
" let g:indent_guides_start_level=2
" let g:indent_guides_guide_size=2


" ############################## quick-scope ##############################

let g:qs_highlight_on_keys=['f','F','t','T']
let g:qs_max_chars=200
let g:qs_lazy_highlight=1
highlight QuickScopePrimary gui=underline cterm=underline
highlight QuickScopeSecondary gui=underline cterm=underline


" ############################## indentline ##############################

" let g:indentLine_setColors=0
let g:indentLine_char_list=['│', '╎', '┆', '┊']


" ############################## rainbow ##############################

let g:rainbow_active=1

" let g:vimsence_client_id = '981745097802398475'
let g:vimsence_small_text='NeoVim'
let g:vimsence_small_image='neovim'
let g:vimsence_editing_details='Editing {}'
let g:vimsence_editing_state='Working on {}'
let g:vimsence_file_explorer_text='In NERDTree'
let g:vimsence_file_explorer_details='Looking for files'
" let g:vimsence_custom_icons={'filetype':'iconname'}

" autocmd FileType * LocalIndentGuide +hl +cc


" ############################## rainbow ##############################

let g:blamer_enabled=1

" ############################## presence.nvim ##############################

" General options
let g:presence_auto_update         = 1
let g:presence_neovim_image_text   = "The One True Text Editor"
let g:presence_main_image          = "neovim"
let g:presence_client_id           = "793271441293967371"
" let g:presence_log_level
let g:presence_debounce_timeout    = 10
let g:presence_enable_line_number  = 1
let g:presence_blacklist           = []
let g:presence_buttons             = 1
let g:presence_file_assets         = {}
let g:presence_show_time           = 1

" Rich Presence text options
let g:presence_editing_text        = "Editing %s"
let g:presence_file_explorer_text  = "Browsing %s"
let g:presence_git_commit_text     = "Committing changes"
let g:presence_plugin_manager_text = "Managing plugins"
let g:presence_reading_text        = "Reading %s"
let g:presence_workspace_text      = "Working on %s"
let g:presence_line_number_text    = "Line %s out of %s"

" TextEdit might fail if hidden is not set.
set hidden

" Add NeoVim's native statusline support
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Highlight the symbol and its references when holding the cursor.
" autocmd CursorHold * silent call CocActionAsync('highlight')

" let g:airline_theme='violet'

" Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window remaining in the only tab.
" autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Open the existing NERDTree on each new tab.
" autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
" autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 | \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif


" ############################## vim-submode ##############################

" A message will appear in the message line when you're in a submode
" and stay there until the mode has existed.
let g:submode_always_show_submode = 1
let g:submode_timeout = 0

" We're taking over the default <C-w> setting. Don't worry we'll do
" our best to put back the default functionality.
call submode#enter_with('window', 'n', '', '<C-w>')

" Note: <C-c> will also get you out to the mode without this mapping.
" Note: <C-[> also behaves as <ESC>
call submode#leave_with('window', 'n', '', '<ESC>')
call submode#leave_with('window', 'n', '', '<CR>')

" Moving between windows
call submode#map('window', 'n', '', 'h', '<C-w>h')
call submode#map('window', 'n', '', 'j', '<C-w>j')
call submode#map('window', 'n', '', 'k', '<C-w>k')
call submode#map('window', 'n', '', 'l', '<C-w>l')

" Creating new windows
call submode#map('window', 'n', '', 'd', '<C-w>s')
call submode#map('window', 'n', '', 's', '<C-w>s')
call submode#map('window', 'n', '', 'r', '<C-w>v')
call submode#map('window', 'n', '', 'v', '<C-w>v')

" Old way, just in case.
nnoremap <Leader>w <C-w>

" I don't like <C-w>q, <C-w>c won't exit Vim when it's the last window.
call submode#map('window', 'n', '', 'q', '<C-w>c')
call submode#map('window', 'n', '', '<C-q>', '<C-w>c')

" Resize faster
call submode#map('window', 'n', '', '<M-k>', '5<C-w>+')
call submode#map('window', 'n', '', '<M-j>', '5<C-w>-')
call submode#map('window', 'n', '', '<M-h>', '5<C-w><')
call submode#map('window', 'n', '', '<M-l>', '5<C-w>>')


" ############################## coc.nvim ##############################

" " May need for Vim (not Neovim) since coc.nvim calculates byte offset by count
" " utf-8 byte sequence
" set encoding=utf-8
" " Some servers have issues with backup files, see #649
" set nobackup
" set nowritebackup

" " Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" " delays and poor user experience
" set updatetime=300

" " Always show the signcolumn, otherwise it would shift the text each time
" " diagnostics appear/become resolved
" set signcolumn=yes

" " Use tab for trigger completion with characters ahead and navigate
" " NOTE: There's always complete item selected by default, you may want to enable
" " no select by `"suggest.noselect": true` in your configuration file
" " NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" " other plugin before putting this into your config
" inoremap <silent><expr> <TAB>
"       \ coc#pum#visible() ? coc#pum#next(1) :
"       \ CheckBackspace() ? "\<Tab>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" " Make <CR> to accept selected completion item or notify coc.nvim to format
" " <C-g>u breaks current undo, please make your own choice
" inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
"                               \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" function! CheckBackspace() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction

" " Use <c-space> to trigger completion
" if has('nvim')
"   inoremap <silent><expr> <c-space> coc#refresh()
" else
"   inoremap <silent><expr> <c-@> coc#refresh()
" endif

" " Use `[g` and `]g` to navigate diagnostics
" " Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
" nmap <silent> [g <Plug>(coc-diagnostic-prev)
" nmap <silent> ]g <Plug>(coc-diagnostic-next)

" " GoTo code navigation
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)

" " Use K to show documentation in preview window
" nnoremap <silent> K :call ShowDocumentation()<CR>

" function! ShowDocumentation()
"   if CocAction('hasProvider', 'hover')
"     call CocActionAsync('doHover')
"   else
"     call feedkeys('K', 'in')
"   endif
" endfunction

" " Symbol renaming
" nmap <F2> <Plug>(coc-rename)

" augroup mygroup
"   autocmd!
"   " Setup formatexpr specified filetype(s)
"   autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
"   " Update signature help on jump placeholder
"   autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
" augroup end

" " Applying code actions to the selected code block
" " Example: `<leader>aap` for current paragraph
" " xmap <leader>a  <Plug>(coc-codeaction-selected)
" " nmap <F3>  <Plug>(coc-codeaction-selected)

" " Remap keys for applying code actions at the cursor position
" nmap <F3>  <Plug>(coc-codeaction-cursor)
" " Remap keys for apply code actions affect whole buffer
" " nmap <leader>as  <Plug>(coc-codeaction-source)
" " Apply the most preferred quickfix action to fix diagnostic on the current line
" " nmap <leader>qf  <Plug>(coc-fix-current)

" " Remap <C-f> and <C-b> to scroll float windows/popups
" if has('nvim-0.4.0') || has('patch-8.2.0750')
"   nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
"   nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
"   inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
"   inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
"   vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
"   vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
" endif

" " Use CTRL-S for selections ranges
" " Requires 'textDocument/selectionRange' support of language server
" nmap <silent> <C-s> <Plug>(coc-range-select)
" xmap <silent> <C-s> <Plug>(coc-range-select)

" " Add `:Format` command to format current buffer
" command! -nargs=0 Format :call CocActionAsync('format')

" " Add (Neo)Vim's native statusline support
" " NOTE: Please see `:h coc-status` for integrations with external plugins that
" " provide custom statusline: lightline.vim, vim-airline
" " set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" " Mappings for CoCList
" " Show all diagnostics
" nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" " Manage extensions
" nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" " Show commands
" nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" " Find symbol of current document
" nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" " Search workspace symbols
" nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" " Do default action for next item
" nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" " Do default action for previous item
" nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" " Resume latest coc list
" nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

"  / --- coc.nvim ---
" ---
" catppuccin
" ---

set background=dark
set termguicolors

lua << EOF
local catppuccin = require("catppuccin")

catppuccin.setup({
  integrations = {
    ts_rainbow = true,
  },
  color_overrides = {
    mocha = {
      text = "#F4CDE9",
      subtext1 = "#DEBAD4",
      subtext0 = "#C8A6BE",
      overlay2 = "#B293A8",
      overlay1 = "#9C7F92",
      overlay0 = "#866C7D",
      surface2 = "#705867",
      surface1 = "#5A4551",
      surface0 = "#44313B",

      base = "#352939",
      mantle = "#211924",
      crust = "#1a1016",
    },
  },
})
EOF

colorscheme catppuccin

if exists("g:neovide")
  set guifont=Iosevka\ Term\ Curly\ Slab:h10.5

  let g:neovide_padding_top = 2
  let g:neovide_padding_bottom = 2
  let g:neovide_padding_right = 2
  let g:neovide_padding_left = 2

  let g:neovide_window_blurred = v:true

  let g:neovide_floating_blur_amount_x = 2.0
  let g:neovide_floating_blur_amount_y = 2.0

  let g:neovide_floating_shadow = v:false

  let g:neovide_floating_corner_radius = 10.0

  let g:neovide_transparency = 0.8

  let g:neovide_scroll_animation_length = 0.3

  let g:neovide_scroll_animation_far_lines = 1

  let g:neovide_hide_mouse_when_typing = v:true

  let g:neovide_underline_stroke_scale = 1.0

  let g:neovide_theme = 'catppuccin'

  let g:neovide_refresh_rate_idle = 5

  let g:neovide_cursor_antialiasing = v:true

  let g:neovide_cursor_animate_in_insert_mode = v:true

  let g:neovide_cursor_animate_command_line = v:true

  let g:neovide_cursor_smooth_blink = v:true

  let g:neovide_cursor_vfx_mode = "pixiedust"
  let g:neovide_cursor_vfx_particle_lifetime = 2.0
  let g:neovide_cursor_vfx_particle_density = 28.0
endif

