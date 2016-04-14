"{{{ source guard
if exists('g:loaded_manager_commands')
    finish
endif
let g:loaded_manager_commands = 1
"}}}

""{{{ color setup
"if !exists('g:lcolor_bg')
   "let g:lcolor_bg = "purple,seagreen,violet,lightred,lightgreen,lightblue,darkmagenta,slateblue"
"endif

"if !exists('g:lcolor_fg')
   "let g:lcolor_fg = "white,white,black,black,black,black,white,white"
"endif

"if !exists('g:lcolor_bg_cterm')
   "let g:lcolor_bg_cterm = "Blue,Green,Cyan,Red,Yellow,Magenta,Brown,LightGray"
"endif

"if !exists('g:lcolor_fg_cterm')
   "let g:lcolor_fg_cterm = "White,White,White,White,White,White,Black,Black"
"endif

"" Define colors for Pattern highlight
"if !exists('g:pcolor_bg')
   "let g:pcolor_bg = "yellow,blue,green,magenta,cyan,brown,orange,red"
"endif

"if !exists('g:pcolor_fg')
   "let g:pcolor_fg = "black,white,black,white,black,white,black,white"
"endif

"if !exists('g:pcolor_bg_cterm')
   "let g:pcolor_bg_cterm = "DarkBlue,DarkGreen,DarkCyan,DarkRed,Yellow,Magenta,Brown,LightGray"
"endif

"if !exists('g:pcolor_fg_cterm')
   "let g:pcolor_fg_cterm = "White,Black,White,White,White,White,Black,Black"
"endif"}}}
""{{{ init setup
"" Strntok: Utility function to implement C-like strntok() by Michael Geddes
"" and Benji Fisher at http://groups.yahoo.com/group/vimdev/message/26788
"function! s:Strntok( s, tok, n)
    "return matchstr( a:s.a:tok[0], '\v(\zs([^'.a:tok.']*)\ze['.a:tok.']){'.a:n.'}')
"endfun


"" ItemCount: Returns the number of items in the given string.
"" Developed by Dan Sharp in MultipleSearch2.vim at
"" http://www.vim.org/scripts/script.php?script_id=1183
"function! s:ItemCount(string)
    "let itemCount = 0
    "let newstring = a:string
    "let pos = stridx(newstring, ',')
    "while pos > -1
        "let itemCount = itemCount + 1
        "let newstring = strpart(newstring, pos + 1)
        "let pos = stridx(newstring, ',')
    "endwhile
    "return itemCount
"endfunction


"" Min: Returns the minimum of the given parameters.
"" Developed by Dan Sharp in MultipleSearch2.vim at
"" http://www.vim.org/scripts/script.php?script_id=1183
"function! s:Min(...)
    "let min = a:1
    "let index = 2
    "while index <= a:0
        "execute "if min > a:" . index . " | let min = a:" . index . " | endif"
        "let index = index + 1
    "endwhile
    "return min
"endfunction


"" HighlightInitL: Initialize the highlight groups for line highlight
"" Based on 'MultipleSearchInit' function developed by Dan Sharp in
"" MultipleSearch2.vim at http://www.vim.org/scripts/script.php?script_id=1183
"function! s:HighlightInitL()
   "let s:lcolor_grp = "LHiColor"
   "let s:lcolor_n = 0

   "let s:lcolor_max = s:Min(s:ItemCount(g:lcolor_bg . ','), s:ItemCount(g:lcolor_fg . ','))

   "let ci = 0
   "while ci < s:lcolor_max
      "let bgColor = s:Strntok(g:lcolor_bg, ',', ci + 1)
      "let fgColor = s:Strntok(g:lcolor_fg, ',', ci + 1)
      "let bgColor_cterm = s:Strntok(g:lcolor_bg_cterm, ',', ci + 1)
      "let fgColor_cterm = s:Strntok(g:lcolor_fg_cterm, ',', ci + 1)

      "exec 'hi ' . s:lcolor_grp . ci .
         "\ ' guifg =' . fgColor . ' guibg=' . bgColor
         "\ ' ctermfg =' . fgColor_cterm . ' ctermbg=' . bgColor_cterm

      "let ci = ci + 1
   "endw
"endfunction


"" HighlightInitP: Initialize the highlight groups for line highlight
"" Based on 'MultipleSearchInit' function developed by Dan Sharp in
"" MultipleSearch2.vim at http://www.vim.org/scripts/script.php?script_id=1183
"function! s:HighlightInitP()
   "let s:pcolor_grp = "PHiColor"
   "let s:pcolor_n = 0

   "let s:pcolor_max = s:Min(s:ItemCount(g:pcolor_bg . ','), s:ItemCount(g:pcolor_fg . ','))

   "let ci = 0
   "while ci < s:pcolor_max
      "let bgColor = s:Strntok(g:pcolor_bg, ',', ci + 1)
      "let fgColor = s:Strntok(g:pcolor_fg, ',', ci + 1)
      "let bgColor_cterm = s:Strntok(g:pcolor_bg_cterm, ',', ci + 1)
      "let fgColor_cterm = s:Strntok(g:pcolor_fg_cterm, ',', ci + 1)

      "exec 'hi ' . s:pcolor_grp . ci .
         "\ ' guifg =' . fgColor . ' guibg=' . bgColor
         "\ ' ctermfg =' . fgColor_cterm . ' ctermbg=' . bgColor_cterm

      "let ci = ci + 1
   "endw
"endfunction


"call s:HighlightInitL()
"call s:HighlightInitP()"}}}

