" ==============================================================================
" File:     space-vim-dark.vim
" Author:   Liu-Cheng Xu
" Source:   https://github.com/liuchengxu/space-vim-dark
"
" Comment:  Vim color scheme
" ==============================================================================

hi clear

if v:version > 580
    " No guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists('g:syntax_on')
        syntax reset
    endif
endif

let g:colors_name='space-vim-dark'

function! s:hi(item, fg, bg, cterm_style)
    if !empty(a:fg)
        execute printf('hi %s ctermfg=%d', a:item, a:fg)
    endif
    if !empty(a:bg)
        execute printf('hi %s ctermbg=%d', a:item, a:bg)
    endif
    execute printf('hi %s cterm=%s', a:item, a:cterm_style)
endfunction

" call s:hi(item, fg, bg, cterm_style)

let s:bg = get(g:, 'space_vim_dark_background', 234)

let s:bias = s:bg - 235

let s:bg0 = s:bg - 1
let s:bg1 = s:bg + 1
let s:bg2 = s:bg + 2
let s:bg3 = s:bg + 3
let s:bg4 = s:bg + 4

let s:fg = 249

call s:hi('Normal'              , 249   , ''    , 'None')

call s:hi('Cursor'              , 88    , 214   , 'bold')

call s:hi('LineNr'              , 238+s:bias    , ''    , 'None')

call s:hi('CursorLine'          , ''    , s:bg0 , 'None')
call s:hi('CursorLineNr'        , 134   , s:bg0 , 'None')
call s:hi('CursorColumn'        , ''    , s:bg0 , 'None')
call s:hi('ColorColumn'         , ''    , s:bg0 , 'None')

" bug. opposite here.
call s:hi('StatusLine'          , 140   , s:bg2 , 'None')
call s:hi('StatusLineNC'        , 244   , s:bg1 , 'None')
call s:hi('StatusLineTerm'      , 140   , s:bg2 , 'bold')
call s:hi('StatusLineTermNC'    , 244   , s:bg1 , 'bold')

call s:hi('TabLine'             , 66    , s:bg3 , 'None')
call s:hi('TabLineSel'          , 178   , s:bg4 , 'None')
call s:hi('TabLineFill'         , 145   , s:bg2 , 'None')

call s:hi('WildMenu'            , 214   , s:bg3 , 'None')

call s:hi('Boolean'             , 207   , ''    , 'None')
call s:hi('Character'           , 75    , ''    , 'None')
call s:hi('Number'              , 176   , ''    , 'None')
call s:hi('Float'               , 135   , ''    , 'None')
call s:hi('String'              , 36    , ''    , 'None')
call s:hi('Conditional'         , 68    , ''    , 'bold')
call s:hi('Constant'            , 218   , ''    , 'None')
call s:hi('Debug'               , 225   , ''    , 'None')
call s:hi('Define'              , 177   , ''    , 'None')
call s:hi('Delimiter'           , 151   , ''    , 'None')

call s:hi('DiffAdd'             , ''    , 24    , 'None')
call s:hi('DiffChange'          , 181   , 239   , 'None')
call s:hi('DiffDelete'          , 162   , 53    , 'None')
call s:hi('DiffText'            , ''    , 102   , 'None')

call s:hi('Directory'           , 67    , ''    , 'bold')
call s:hi('Exception'           , 203   , ''    , 'bold')
call s:hi('Function'            , 169   , ''    , 'bold')
call s:hi('Identifier'          , 167   , ''    , 'None')
call s:hi('Ignore'              , 244   , ''    , 'None')
call s:hi('Operator'            , 111   , ''    , 'None')
call s:hi('FoldColumn'          , 67    , s:bg1 , 'None')
call s:hi('Folded'              , 133   , s:bg1 , 'bold')

call s:hi('PreCondit'           , 139   , ''    , 'None')
call s:hi('PreProc'             , 176   , ''    , 'None')
call s:hi('Question'            , 81    , ''    , 'None')
call s:hi('Repeat'              , 68    , ''    , 'bold')

call s:hi('Keyword'             , 68    , ''    , 'bold')
call s:hi('Label'               , 104   , ''    , 'None')
call s:hi('Macro'               , 141   , ''    , 'None')

call s:hi('Type'                , 168   , ''    , 'None')
call s:hi('Typedef'             , 204   , ''    , 'None')
call s:hi('Underlined'          , ''    , ''    , 'underline')

call s:hi('Statement'           , 68    , ''    , 'None')

call s:hi('Search'              , 16    , 76    , 'bold')
call s:hi('IncSearch'           , 16    , 76    , 'bold')
call s:hi('MatchParen'          , 40    , s:bg0 , 'bold,underline')

call s:hi('ModeMsg'             , 229   , ''    , 'None')

" Popup menu
call s:hi('Pmenu'               , 141   , s:bg1 , 'None')
call s:hi('PmenuSel'            , 251   , 97    , 'None')
call s:hi('PmenuSbar'           , 28    , 233   , 'None')
call s:hi('PmenuThumb'          , 160   , 97    , 'None')

" SignColumn may relate to ale sign
call s:hi('SignColumn'          , 118   , s:bg  , 'None')
call s:hi('Todo'                , 172   , s:bg  , 'bold')

" VertSplit consistent with normal background to hide it
call s:hi('VertSplit'           , s:bg4 , ''    , 'None')

call s:hi('Warning'             , 136   , ''    , 'bold')
call s:hi('WarningMsg'          , 136   , ''    , 'bold')

call s:hi('Error'               , 160   , s:bg  , 'bold')
call s:hi('ErrorMsg'            , 196   , s:bg  , 'bold')

call s:hi('Special'             , 169   , ''    , 'None')
call s:hi('SpecialKey'          , 59    , ''    , 'None')
call s:hi('SpecialChar'         , 171   , ''    , 'bold')
call s:hi('SpecialComment'      , 24    , ''    , 'italic')

" marks column
call s:hi('SpellBad'            , 168   , ''    , 'underline')
call s:hi('SpellCap'            , 110   , ''    , 'underline')
call s:hi('SpellLocal'          , 253   , ''    , 'underline')
call s:hi('SpellRare'           , 218   , ''    , 'underline')

call s:hi('Tag'                 , 161   , ''    , 'None')
call s:hi('Title'               , 176   , ''    , 'None')
call s:hi('Structure'           , 68    , ''    , 'bold')
call s:hi('StorageClass'        , 178   , ''    , 'bold')

call s:hi('Visual'              , ''    , s:bg3 , 'None')
call s:hi('VisualNOS'           , ''    , 238   , 'None')

call s:hi('Comment'             , 30    , ''    , 'italic')

" tilde group
call s:hi('NonText'             , 241   , ''    , 'None')

hi link qfLineNr Type

hi SVDNormal                    ctermfg=249
hi SVDDark1                     ctermfg=237
hi SVDDark2                     ctermfg=239
hi SVDDark3                     ctermfg=241
hi SVDDark4                     ctermfg=243

hi SVDAqua                      ctermfg=72
hi SVDRed                       ctermfg=160
hi SVDBlue                      ctermfg=68
hi SVDGreen                     ctermfg=36
hi SVDYellow                    ctermfg=114
hi SVDOrange                    ctermfg=178
hi SVDMagenta                   ctermfg=128

hi SVDAquaBold                  ctermfg=72      cterm=bold
hi SVDBlueBold                  ctermfg=68      cterm=bold
hi SVDGreenBold                 ctermfg=36      cterm=bold
hi SVDYellowBold                ctermfg=114     cterm=bold
hi SVDOrangeBold                ctermfg=137     cterm=bold


"
" LANGUAGE
" ------------

" markdown
hi link markdownH1              SVDBlueBold
hi link markdownH2              SVDGreenBold
hi link markdownH3              SVDYellowBold
hi link markdownH4              SVDOrangeBold
hi link markdownH5              SVDBlue
hi link markdownH6              SVDGreen
hi link mkdCode                 SVDYellow
hi link mkdItalic               String

" c
hi link cConstant  SVDOrange

" cpp
hi cppExceptions                ctermfg=207     cterm=bold
hi link cppSTLexception         cppExceptions

" css
hi link cssTagName              SVDBlueBold
hi link cssProp                 Function

" dot
hi link dotKeyChar              Number
hi link dotType                 StorageClass

" sh
hi link shSet                   SVDBlueBold
hi link shLoop                  SVDBlueBold
hi link shFunctionKey           SVDBlueBold
hi link shTestOpr               SVDOrange

" solidity
hi link solContract             SVDOrangeBold

" vimL
hi link vimLet                  SVDBlueBold
hi link vimFuncKey              SVDBlueBold
hi link vimCommand              SVDBlueBold
hi link vimGroup                Directory
hi link vimHiGroup              Directory

" rust
hi link rustKeyword             SVDBlueBold
hi link rustModPath             SVDBlue
call s:hi('rustTrait'           , 168   , ''    , 'bold')

" json
hi link jsonStringSQError SVDRed

" xml
hi link xmlTag                  Identifier
hi link xmlEndTag               Identifier
hi link xmlTagName              Identifier

" go
hi link goMethodCall            Function
hi link goReceiverType          SVDYellow
hi link goTypeConstructor       SVDOrange
hi link goType                  PreProc
hi link goFloats                Float
hi link goFormatSpecifier       SVDBlue
hi link goPredefinedIdentifiers SVDMagenta
call s:hi('goTypeName'          , 169   , ''    , 'bold')
call s:hi('goFunction'          , 168   , ''    , 'bold')

" make
hi link makeCommands            SVDBlue
hi link makeSpecTarget          SVDBlueBold

" java
hi link javaScopeDecl           keyword
hi link javaClassDecl           Function

" scala
hi link scalaKeyword            SVDBlueBold
hi link scalaNameDefinition     SVDBlueBold

" ruby
hi link rubyClass                  SVDBlueBold
hi link rubyDefine                 SVDBlueBold
hi link rubyInterpolationDelimiter Number

" html
hi link htmlSpecialTagName Tag
hi link htmlItalic              String

" python-mode
hi pythonLambdaExpr             ctermfg=105
hi pythonInclude                ctermfg=68
hi pythonClass                  ctermfg=207     cterm=bold
hi pythonParameters             ctermfg=147
hi pythonParam                  ctermfg=108
hi pythonBrackets               ctermfg=183
hi pythonClassParameters        ctermfg=111
hi pythonSelf                   ctermfg=68

hi link pythonOperator          SVDBlueBold
hi link pythonStatement         SVDBlueBold

call s:hi('pythonDottedName'    , 169   , ''    , 'bold')
call s:hi('pythonDecorator'     , 169   , ''    , 'bold')

hi pythonError                  ctermfg=196
hi pythonIndentError            ctermfg=197
hi pythonSpaceError             ctermfg=198

hi link pythonBuiltinType       SVDBlue
hi pythonBuiltinObj             ctermfg=71      cterm=bold
hi pythonBuiltinFunc            ctermfg=169     cterm=bold

hi pythonException              ctermfg=161     cterm=bold


"
" PLUGINS
" ------------

"ALE {
hi link ALEErrorSign            Error
hi link ALEWarningSign          Warning
"}

" vim-indent-guides {
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd              ctermbg=237
hi IndentGuidesEven             ctermbg=239
" }

" vim-gitgutter {
hi link GitGutterAdd            SVDGreen
hi link GitGutterChange         SVDOrange
hi link GitGutterDelete         SVDRed
hi link GitGutterChangeDelete   SVDMagenta
" }

" vim-markdown {
hi link htmlH1                  SVDBlueBold
hi link htmlH2                  SVDGreenBold
hi link htmlH3                  SVDYellowBold
hi link htmlH4                  SVDOrangeBold
hi link htmlH5                  SVDBlue
hi link htmlH6                  SVDGreen
" }

" vim-signify {
hi link SignifySignAdd          SVDGreen
hi link SignifySignChange       SVDAqua
hi link SignifySignDelete       SVDRed
" }

" vim-startify {
hi link StartifyFile            Normal
hi link StartifyHeader          Define
hi link StartifySection         SVDBlueBold
" }

" YouCompleteMe {
hi YcmErrorSection              ctermbg=5       ctermfg=249
hi YcmWarningSection            ctermbg=60      ctermfg=249
" }

" vim-leader-guide {
hi link LeaderGuideKeys         Function
hi link LeaderGuideDesc         SVDNormal
hi link LeaderGuideBrackets     SVDGreen
" }

" NERDTree {
hi link NERDTreeCWD             Function
hi link NERDTreeUp              SVDBlueBold
hi link NERDTreeDir             SVDBlueBold
hi link NERDTreeDirSlash        SVDBlueBold
hi link NERDTreeOpenable        SVDBlueBold
hi link NERDTreeClosable        SVDBlueBold
" }

" Tagbar {
call s:hi('TagbarHighlight'         , 16    , 36    , 'bold')
call s:hi('TagbarVisibilityPublic'  , 34    , ''    , 'none')
call s:hi('TagbarScope'             , 169   , ''    , 'bold')
hi link TagbarKind                  Function
hi link TagbarNestedKind            SVDBlueBold
" }

delf s:hi

" Must be at the end, because of ctermbg=234 bug
set background=dark
