# Set the colour scheme
colorscheme one-dark

# Width of a tab
set-option global tabstop 3

# Indent with 4 spaces
set-option global indentwidth 4

# Always keep one line and three columns displayed around the cursor
set-option global scrolloff 3,3

# Display the status bar on top
set-option global ui_options ncurses_status_on_top=true

# Display line numbers
add-highlighter global/ number-lines -hlcursor

# Highlight trailing whitespace
add-highlighter global/ regex \h+$ 0:Error

# Softwrap long lines
add-highlighter global/ wrap -word -indent

# Clipboard management mappings
map -docstring "yank the selection into the clipboard" global user y "<a-|> wl-copy<ret>"
map -docstring "paste the clipboard" global user p "<a-!> wl-paste<ret>"

# Shortcut to quickly exit the editor
define-command -docstring "save and quit" x "write-all; quit"

# kakoune-table
map global user t ": evaluate-commands -draft table-align<ret>"
