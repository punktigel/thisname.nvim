local M = {}


function M._load()
    local p = require('thisname.color_palette')

    M.defaults = {
        -- Set background color
        ['Normal'] = {fg = p.fg, bg = p.bg},

        -- Default highlight groups
        -- Reset all groups with {}

        -- ['Highlight group'] = {}       --| Comment
        ['ColorColumn'] = {bg = p.red},             --| Used for the columns set with 'colorcolumn'.
        ['Conceal'] = {},                 --| Placeholder characters substituted for concealed text (see 'conceallevel').
        ['CurSearch'] = {link = 'IncSearch'},               --| Used for highlighting a search pattern under the cursor (see 'hlsearch').
        ['Cursor'] = {bg = p.fg, fg = p.bg},                  --| Character under the cursor.
        ['lCursor'] = {link = 'Cursor'},                 --| Character under the cursor when |language-mapping| is used (see 'guicursor').
        ['CursorIM'] = {link = 'Cursor'},                --| Like Cursor, but used when in IME mode. *CursorIM*
        ['CursorColumn'] = {bg = p.gray_dark},            --| Screen-column at the cursor, when 'cursorcolumn' is set.
        ['CursorLine'] = {bg = p.gray_dark},              --| Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
        ['Directory'] = {fg = p.red},               --| Directory names (and other special names in listings).
        ['DiffAdd'] = {bg = p.d_green},                 --| Diff mode: Added line. |diff.txt|
        ['DiffChange'] = {bg = p.d_orange},              --| Diff mode: Changed line. |diff.txt|
        ['DiffDelete'] = {bg = p.d_red, blend = 20},              --| Diff mode: Deleted line. |diff.txt|
        ['DiffText'] = {bg = p.orange_dark, blend=20},                --| Diff mode: Changed text within a changed line. |diff.txt|
        ['EndOfBuffer'] = {fg = p.green_blue},             --| Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
        -- ['TermCursor'] = {},              --| Cursor in a focused terminal.
        -- ['TermCursorNC'] = {},            --| Cursor in an unfocused terminal.
        ['ErrorMsg'] = {fg = p.d_red, bold = true},                --| Error messages on the command line.
        ['WinSeparator'] = {fg = p.green_blue},            --| Separators between window splits.
        ['Folded'] = {},                  --| Line used for closed folds.
        ['FoldColumn'] = {},              --| 'foldcolumn'
        ['SignColumn'] = {bg = p.bg},              --| Column where |signs| are displayed.
        ['IncSearch'] = {bg = p.gray_dark},               --| 'incsearch' highlighting; also used for the text replaced with ":s///c".
        ['Substitute'] = {link = 'IncSearch'},              --| |:substitute| replacement text highlighting.
        ['LineNr'] = {fg = p.green_blue},                  --| Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
        ['LineNrAbove'] = {link = 'LineNr'},             --| Line number for when the 'relativenumber' option is set, above the cursor line.
        ['LineNrBelow'] = {link = 'LineNr'},             --| Line number for when the 'relativenumber' option is set, below the cursor line.
        -- ['CursorLineNr'] = {},            --| Like LineNr when 'cursorline' is set and 'cursorlineopt' contains "number" or is "both", for the cursor line.
        -- ['CursorLineFold'] = {},          --| Like FoldColumn when 'cursorline' is set for the cursor line.
        -- ['CursorLineSign'] = {},          --| Like SignColumn when 'cursorline' is set for the cursor line.
        ['MatchParen'] = {bg = p.gray_dark, fg = p.white},              --| Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
        ['ModeMsg'] = {bg = p.bg_light},                 --| 'showmode' message (e.g., "-- INSERT --").
        ['MsgArea'] = {bg = p.bg},                 --| Area for messages and cmdline.
        -- ['MsgSeparator'] = {},            --| Separator for scrolled messages |msgsep|.
        ['MoreMsg'] = {bg = p.purple_dark},                 --| |more-prompt|
        ['NonText'] = {fg = p.green_blue},                 --| '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
        -- ['Normal'] = {},                  --| Normal text. - background color
        ['NormalFloat'] = {link = 'Normal'},             --| Normal text in floating windows.
        -- ['FloatBorder'] = {},             --| Border of floating windows.
        -- ['FloatTitle'] = {},              --| Title of floating windows.
        ['NormalNC'] = {},                --| Normal text in non-current windows.
        ['Pmenu'] = {fg = p.gray},                   --| Popup menu: Normal item.
        ['PmenuSel'] = {fg = p.fg},                --| Popup menu: Selected item.
        ['PmenuKind'] = {},               --| Popup menu: Normal item "kind".
        ['PmenuKindSel'] = {},            --| Popup menu: Selected item "kind".
        ['PmenuExtra'] = {},              --| Popup menu: Normal item "extra text".
        ['PmenuExtraSel'] = {},           --| Popup menu: Selected item "extra text".
        ['PmenuSbar'] = {},               --| Popup menu: Scrollbar.
        ['PmenuThumb'] = {},              --| Popup menu: Thumb of the scrollbar.
        ['Question'] = {},                --| |hit-enter| prompt and yes/no questions.
        ['QuickFixLine'] = {},            --| Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
        ['Search'] = {},                  --| Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
        ['SpecialKey'] = {},              --| Unprintable characters: Text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
        ['SpellBad'] = {},                --| Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
        ['SpellCap'] = {},                --| Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
        ['SpellLocal'] = {},              --| Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
        ['SpellRare'] = {},               --| Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
        ['StatusLine'] = {fg = p.black, bg = p.green_blue, bold = true},              --| Status line of current window.
        ['StatusLineNC'] = {fg = p.white, bg = p.bg_light},            --| Status lines of not-current windows. Note: If this is equal to "StatusLine", Vim will use "^^^" in the status line of the current window.
        ['TabLine'] = {bg = p.bg_light},                 --| Tab pages line, not active tab page label.
        ['TabLineFill'] = {bg = p.bg_light},             --| Tab pages line, where there are no labels.
        ['TabLineSel'] = {bg = p.bg_dark, fg = p.green_blue},              --| Tab pages line, active tab page label.
        ['Title'] = {},                   --| Titles for output from ":set all", ":autocmd" etc.
        ['Visual'] = {bg = p.bg_light},                  --| Visual mode selection.
        ['VisualNOS'] = {},               --| Visual mode selection when vim is "Not Owning the Selection".
        ['WarningMsg'] = {fg = p.yellow},              --| Warning messages.
        ['Whitespace'] = {},              --| "nbsp", "space", "tab", "multispace", "lead" and "trail" in 'listchars'.
        ['WildMenu'] = {bg = p.green_blue},                --| Current match in 'wildmenu' completion.
        -- ['WinBar'] = {},                  --| Window bar of current window.
        -- ['WinBarNC'] = {},                --| Window bar of not-current windows.

        -- Default syntax groups
        -- Reset all groups with {}
        -- Uncomment linked groups to set more specific syntax highlighting

        -- ['Syntax group'] = {}     --| Comment
        ['Comment'] = {fg = p.gray, italic = true},            --| any comment

        ['Constant'] = {},           --| any constant
        ['String'] = {fg = p.orange},             --| a string constant: "this is a string"
        -- ['Character'] = {},          --| a character constant: 'c', '\n'
        ['Number'] = {fg = p.gray},             --| a number constant: 234, 0xff
        -- ['Boolean'] = {},            --| a boolean constant: TRUE, false
        -- ['Float'] = {},              --| a floating point constant: 2.3e10

        ['Identifier'] = {},         --| any variable name
        ['Function'] = {fg = p.green_blue},           --| function name (also: methods for classes)

        ['Statement'] = {fg = p.purple_dark},          --| any statement
        -- ['Conditional'] = {},        --| if, then, else, endif, switch, etc.
        -- ['Repeat'] = {},             --| for, do, while, etc.
        -- ['Label'] = {},              --| case, default, etc.
        ['Operator'] = {fg = p.gray},           --| "sizeof", "+", "*", etc.
        ['Keyword'] = {fg = p.purple_dark, bold = true},            --| any other keyword
        -- ['Exception'] = {},          --| try, catch, throw

        ['PreProc'] = {fg = p.gray_dark, bold = true},            --| generic Preprocessor
        -- ['Include'] = {fg = p.gray, bold = true},            --| preprocessor #include
        -- ['Define'] = {},             --| preprocessor #define
        -- ['Macro'] = {},              --| same as Define
        -- ['PreCondit'] = {},          --| preprocessor #if, #else, #endif, etc.

        ['Type'] = {fg = p.blue},               --| int, long, char, etc.
        -- ['StorageClass'] = {},       --| static, register, volatile, etc.
        -- ['Structure'] = {},          --| struct, union, enum, etc.
        -- ['Typedef'] = {},            --| A typedef

        ['Special'] = {fg = p.gray},            --| any special symbol
        -- ['SpecialChar'] = {},        --| special character in a constant
        -- ['Tag'] = {},                --| you can use CTRL-] on this
        -- ['Delimiter'] = {},          --| character that needs attention
        -- ['SpecialComment'] = {},     --| special things inside a comment
        -- ['Debug'] = {},              --| debugging statements

        ['Underlined'] = {},         --| text that stands out, HTML links

        ['Ignore'] = {},             --| left blank, hidden  |hl-Ignore|

        ['Error'] = {fg = p.red, bold = true},              --| any erroneous construct

        ['Todo'] = {bold = true, italic = true},               --| anything that needs extra attention; mostly the




        -- Telescope
        -- Border
        ['TelescopeBorder'] = {fg = p.green_blue},
        -- ['TelesopeResultBorder'] = {},
        -- ['TelesopePreviewBorder'] = {},
        -- ['TelescopePromptBorder'] = {},

        ['TelescopeMatching'] = {fg = p.green_blue}, -- Matching characters from your input

        ['TelescopeSelection'] = {bg = p.gray_dark}, -- Selected item
        ['TelescopeMultiSelection'] = {bg = p.gray}, -- Multiselections
        ['TelescopeSelectionCaret'] = {fg = p.green_blue, bold=true}, -- Selection caret prefix

        ['TelescopeNormal'] = {},
        ['TelescopeTitle'] = {},

        ['TelescopePromptPrefix'] = {fg = p.green_blue}, -- Prompt prefix
        ['TelescopePromptCounter'] = {fg = p.green_blue}, -- Prompt item counter



        -- GitSigns
        ["GitSignsAdd"] = {fg = p.d_green},
        ["GitSignsChange"] = {fg = p.d_orange},
        ["GitSignsDelete"] = {fg = p.d_red},


        -- LSP
        ['@lsp.type.parameter'] = {fg = p.blue_light},

        ['netrwComment'] = {fg = p.green_blue},
        ['netrwPlain'] = {fg = p.gray},
        ['netrwHdr'] = {fg = p.orange},
    }


    for group, opts in pairs(M.defaults) do
        vim.api.nvim_set_hl(0, group, opts)
    end
end

return M
