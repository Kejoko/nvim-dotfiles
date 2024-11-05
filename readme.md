# Neovim Config

This is my neovim configuration.
It was based off of [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim), then broken down into smaller files and organized as I thought made sense.
This configuration is focused around C++ development.

## Depenendencies
- `npm` (node) for installing some mason packages
- `cargo` (rust) for installing some mason packages
- `rg` (ripgrep) for telescope and todo-comments

## Todo
- [x] Add signs in the gutter for whether or not we can fold a section
    - [ ] Use '>' and down caret sign instead of the long lines so we can use 1 column for folding instead of having multiple '|' characters stacked next to eachother
        - [ ] To notice this we need to uncomment the `vim.opt.foldcolumn = "1"` line in `lua/vim/options.lua`
    - [ ] ~~Make the fold signs directly next to the line numbers (so gitsigns are on the far left)~~
    - [x] Don't fold everything automatically? Do we want the automatic folding of everything within the file to be the default behavior?
    - [ ] The C++ folds are only showing the return type of the function and not the function name, because function name is on a newline
    - [ ] Don't highlight the entire width of the buffer if we have a fold (only highlight the folded text?)
- [ ] ~~Use rainbow markers (parentheses, brackets, braces, etc) so we can easily see which are associated with eachother~~
- [ ] Make the status column have a different (brighter) background color
- [ ] Put more spacing between the status column and the text 
- [ ] Change the current row to be slightly more noticeable
- [ ] Add a nice startup screen
- [ ] Make resolving git conflicts nicer
- [ ] Add ability to open multiple buffers side by side
- [ ] Add ability to open a terminal
- [x] Make it more apparent which buffer is active (clearly determine which buffer we are editing) - handled via the nicely colored lualine
- [x] Change the theme
- [ ] Debugging capabilities
