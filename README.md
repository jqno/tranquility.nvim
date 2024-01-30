# Tranquility.nvim

A quiet colorscheme for Neovim.

## Philosophy

I find that most color schemes emphasize the reserved words in a language by giving them bright colours. Tranquility.nvim does the opposite, and emphasizes identifiers instead. After all, that’s what the code is really about, right?

It provides a collection of colorschemes derived from different well-known palettes, because sometimes it's nice to mix things up, without sacrificing any principles.

## Screenshot

![tranquility](doc/tranquility.png)
Tranquility: based on [Selenized palette](https://github.com/jan-warchol/selenized)

## Configuration

Install the plugin with your favorite plugin manager, for instance with Lazy:

```lua
return {
    'jqno/tranquility.nvim',

    config = function()
        vim.cmd.colorscheme('tranquility')
    end
}
```
