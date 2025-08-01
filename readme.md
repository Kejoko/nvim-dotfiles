# Neovim Config

This is my neovim configuration.
It was based off of [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim), then broken down into smaller files and organized as I thought made sense.
This configuration is focused around C++ development.

## Depenendencies
- `npm` (node) for installing some mason packages
- `cargo` (rust) for installing some mason packages
- `rg` (ripgrep) for telescope and todo-comments

## Godot integration
To integrate with Godot and program in GD Script we had to make a few changes within neovim as well as a few changes within Godot.
Within Neovim:
- In [options.lua](./lua/vim/options.lua) we have to connect to the `godothost` server if we recognize that we are within a Godot project
- In [nvim-lspconfig.lua](./lua/plugins/core/lsp/nvim-lspconfig.lua) we have to require `lspconfig` to setup the `gdscript` lsp
- In [nvim-treesitter.lua](./lua/plugins/editor/highlight/nvim-treesitter.lua) we must ensure we have `gdscript`, `godot_resource`, and `gdshader` in our `ensure_installed` table
Within Godot (assuming we are using the `kitty` application for our terminal):
1. Open the editor settings (on Mac: `Godot`->`Editor Settings`->`Text Editor`->`External`)
1. Turn the `Use External Editor` toggle `On`
1. Set the `Exec Path` to `/Applications/kitty.app/Contents/MacOS/kitty`
1. Set the `Exec Flags` to `-e nvim --server ./godothost --remote-send "<esc>:n {file}<CR>:call cursor({line},{col})<CR>" ; exit`
### Notes
There is some weirdness still going on with our Godot configuration.
- Currently it opens a ghost version of kitty and doesn't quit out of it, so it remains in the open applications view on Mac
- The indenting is not correct (it is using spaces instead of the GD Script required tabs)
- Some of the autocompletion is very strange... Items will show up in the autocomplete window, but as you type out the remainder of the item it will disappear from the autocomplete window. Additionally, if you try to autocomplete a string, then the first quotation mark will get removed
#### Potential fixes
- Can we just open nvim directly in the `Exec Path` instead of going through `kitty`?
- Can we modify treesitter to not adjust indentations for GD Script files?

## Todo
- [x] Add signs in the gutter for whether or not we can fold a section
    - [ ] Use '>' and down caret sign instead of the long lines so we can use 1 column for folding instead of having multiple '|' characters stacked next to eachother
        - [ ] To notice this we need to uncomment the `vim.opt.foldcolumn = "1"` line in `lua/vim/options.lua`
    - [ ] ~~Make the fold signs directly next to the line numbers (so gitsigns are on the far left)~~
    - [x] Don't fold everything automatically? Do we want the automatic folding of everything within the file to be the default behavior?
    - [ ] The C++ folds are only showing the return type of the function and not the function name, because function name is on a newline
    - [ ] Don't highlight the entire width of the buffer if we have a fold (only highlight the folded text?)
- [ ] ~~Use rainbow markers (parentheses, brackets, braces, etc) so we can easily see which are associated with eachother~~
- [ ] ~~Make the status column have a different (brighter) background color~~
- [ ] Put more spacing between the status column and the text 
- [ ] ~~Change the current row to be slightly more noticeable~~
- [x] Add a nice startup screen
    - [ ] ~~Get rid of the default `nvim/` buffer that opens up. This is buffer 1 and we can see a tab created for it in bufferline~~
- [x] Add ability to open multiple buffers side by side
- [x] Add ability to open a terminal
- [x] Make it more apparent which buffer is active (clearly determine which buffer we are editing) - handled via the nicely colored lualine
- [x] Change the theme
- [x] Neo-Tree
    - [x] Make NeoTree background darker
    - [x] Open up the current file when we hit `<leader>n`
    - [ ] Fix the icons? Why is there a red box on the modified files line
    - [ ] Why is the separating line not directly splitting the file explorer and the editor window
    - [ ] ~~Try NvimTree~~
- [x] Bufferline
    - [x] Make the not currently selected bufferline tabs be darker than the current tab
    - [ ] ~~Add a blue line above the currently selected tab~~
    - [x] Don't italicize the currently open tab
    - [x] Add the buffer number to the beginning of the tab
    - [x] Fix the icons so they can actually display
    - [x] Fix the seperator for the file explorer and the left most tab
- [ ] ~~Incline to show the name of the currently open file in the top of the window~~
- [x] Python support
- [x] Debugging capabilities
    - [x] C++
    - [x] Python
    - [ ] GLSL
- [x] Find a better key sequence for scrolling through code autocomplete suggestions. Perhaps Shift or Ctrl + J or K? I don't like using the arrow keys to navigate the ocde completion stuff
- [x] Let's experiment with different themes. The VS Code theme is no longer scratching the itch ...
- [x] Are we able to support bolded terms and italic terms based on syntax? For example, pre processor definitions could be bolded

