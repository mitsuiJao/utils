" monokai_extended_bat.vim
" batのデフォルトテーマ "Monokai Extended" (jonschlinkert/sublime-monokai-extended
" ベース、bat/assets/patches/Monokai-Extended.tmTheme.patch 適用前の値) から
" 色定義を抽出して作成したvim colorscheme。
"
" 出典: https://github.com/jonschlinkert/sublime-monokai-extended
"       Monokai Extended.tmTheme

hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "monokai_extended_bat"

set background=dark

" 基本
hi Normal       guifg=#f8f8f2 guibg=#000000 ctermfg=255 ctermbg=16
hi NormalFloat  guifg=#f8f8f2 guibg=#333333 ctermfg=255 ctermbg=236
hi Cursor       guifg=#000000 guibg=#f8f8f0 ctermfg=16 ctermbg=255
hi CursorLine   guibg=#333333 ctermbg=236 cterm=NONE
hi CursorLineNr guifg=#e6db74 guibg=#333333 ctermfg=186 ctermbg=236 cterm=NONE
hi LineNr       guifg=#75715e guibg=#000000 ctermfg=242 ctermbg=16
hi ColorColumn  guibg=#333333 ctermbg=236
hi Visual       guibg=#444444 ctermbg=238
hi VisualNOS    guibg=#444444 ctermbg=238

" 分割・ステータス行
hi VertSplit    guifg=#3b3a32 guibg=#000000 ctermfg=237 ctermbg=16
hi StatusLine   guifg=#f8f8f2 guibg=#3b3a32 ctermfg=255 ctermbg=237
hi StatusLineNC guifg=#75715e guibg=#3b3a32 ctermfg=242 ctermbg=237
hi TabLine      guifg=#75715e guibg=#3b3a32 ctermfg=242 ctermbg=237
hi TabLineSel   guifg=#f8f8f2 guibg=#000000 ctermfg=255 ctermbg=16
hi TabLineFill  guibg=#3b3a32 ctermbg=237

" ポップアップメニュー
hi Pmenu        guifg=#f8f8f2 guibg=#3b3a32 ctermfg=255 ctermbg=237
hi PmenuSel     guifg=#f8f8f2 guibg=#444444 ctermfg=255 ctermbg=238
hi PmenuSbar    guibg=#3b3a32 ctermbg=237
hi PmenuThumb   guibg=#75715e ctermbg=242

" 検索
hi Search       guifg=#000000 guibg=#e6db74 ctermfg=16 ctermbg=186
hi IncSearch    guifg=#000000 guibg=#fd971f ctermfg=16 ctermbg=208
hi MatchParen   guifg=#fd971f guibg=#3b3a32 gui=bold ctermfg=208 ctermbg=237 cterm=bold

" 折り畳み・その他UI
hi Folded       guifg=#75715e guibg=#000000 gui=italic ctermfg=242 ctermbg=16 cterm=italic
hi FoldColumn   guifg=#75715e guibg=#000000 ctermfg=242 ctermbg=16
hi SignColumn   guifg=#75715e guibg=#000000 ctermfg=242 ctermbg=16
hi NonText      guifg=#3b3a32 ctermfg=237
hi SpecialKey   guifg=#3b3a32 ctermfg=237
hi WildMenu     guifg=#000000 guibg=#a6e22e ctermfg=16 ctermbg=148

" 構文ハイライト (bat/Monokai Extended準拠)
hi Comment        guifg=#75715e gui=italic ctermfg=242 cterm=italic

hi Constant       guifg=#be84ff ctermfg=141
hi String         guifg=#e6db74 ctermfg=186
hi Character      guifg=#e6db74 ctermfg=186
hi Number         guifg=#be84ff ctermfg=141
hi Boolean        guifg=#be84ff ctermfg=141
hi Float          guifg=#be84ff ctermfg=141

hi Identifier     guifg=#ffffff ctermfg=15
hi Function       guifg=#a6e22e ctermfg=148

hi Statement      guifg=#f92672 ctermfg=197
hi Conditional    guifg=#f92672 ctermfg=197
hi Repeat         guifg=#f92672 ctermfg=197
hi Label          guifg=#f92672 ctermfg=197
hi Operator       guifg=#f92672 ctermfg=197
hi Keyword        guifg=#f92672 ctermfg=197
hi Exception      guifg=#f92672 ctermfg=197

hi PreProc        guifg=#f92672 ctermfg=197
hi Include        guifg=#f92672 ctermfg=197
hi Define         guifg=#f92672 ctermfg=197
hi Macro          guifg=#f92672 ctermfg=197
hi PreCondit      guifg=#f92672 ctermfg=197

hi Type           guifg=#66d9ef gui=italic ctermfg=81 cterm=italic
hi StorageClass   guifg=#66d9ef gui=italic ctermfg=81 cterm=italic
hi Structure      guifg=#66d9ef ctermfg=81
hi Typedef        guifg=#66d9ef ctermfg=81

hi Special        guifg=#fd971f gui=italic ctermfg=208 cterm=italic
hi SpecialChar    guifg=#fd971f ctermfg=208
hi Tag            guifg=#f92672 ctermfg=197
hi Delimiter      guifg=#f8f8f2 ctermfg=255
hi SpecialComment guifg=#75715e gui=italic ctermfg=242 cterm=italic
hi Debug          guifg=#fd971f ctermfg=208

hi Underlined     guifg=#66d9ef gui=underline ctermfg=81 cterm=underline
hi Ignore         guifg=#75715e ctermfg=242
hi Error          guifg=#f8f8f0 guibg=#f92672 ctermfg=255 ctermbg=197
hi Todo           guifg=#f92672 guibg=#000000 gui=bold ctermfg=197 ctermbg=16 cterm=bold

" クラス名・関数引数など細かい区分 (テーマ独自のグループを再現)
hi htmlTag              guifg=#f92672 ctermfg=197
hi htmlEndTag           guifg=#f92672 ctermfg=197
hi htmlTagName          guifg=#f92672 ctermfg=197
hi htmlArg              guifg=#a6e22e ctermfg=148

" diff
hi DiffAdd      guifg=#a6e22e guibg=#000000 ctermfg=148 ctermbg=16
hi DiffDelete   guifg=#f92672 guibg=#000000 ctermfg=197 ctermbg=16
hi DiffChange   guifg=#e6db74 guibg=#000000 ctermfg=186 ctermbg=16
hi DiffText     guifg=#3bc0f0 guibg=#000000 ctermfg=81  ctermbg=16

" spell
hi SpellBad     guisp=#f92672 gui=undercurl ctermfg=197 cterm=underline
hi SpellCap     guisp=#66d9ef gui=undercurl ctermfg=81  cterm=underline
hi SpellRare    guisp=#be84ff gui=undercurl ctermfg=141 cterm=underline
hi SpellLocal   guisp=#a6e22e gui=undercurl ctermfg=148 cterm=underline
