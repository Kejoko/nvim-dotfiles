# Neovim Config

This is my neovim configuration.
It was based off of [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim), then broken down into smaller files and organized as I thought made sense.
This configuration is focused around C++ development. 

## Todo
- [x] Add signs in the gutter for whether or not we can fold a section
    - [ ] Use '>' and down caret sign instead of the long lines so we can use 1 column for folding instead of having multiple '|' characters stacked next to eachother
    - [ ] ~~Make the fold signs directly next to the line numbers (so gitsigns are on the far left)~~
    - [x] Don't fold everything automatically? Do we want the automatic folding of everything within the file to be the default behavior?
    - [ ] The C++ folds are only showing the return type of the function and not the function name, because function name is on a newline
    - [ ] Don't highlight the entire width of the buffer if we have a fold (only highlight the folded text?)
- [ ] Use rainbow markers (parentheses, brackets, braces, etc) so we can easily see which are associated with eachother
- [ ] Add a nice startup screen
- [x] Change the theme
- [ ] Debugging capabilities
