# Tranquility.nvim

A quiet colorscheme for Neovim.

## Philosophy

I find that most color schemes emphasize the reserved words in a language by giving them bright colours. Tranquility.nvim does the opposite, and emphasizes identifiers instead. After all, that’s what the code is really about, right?

It provides a collection of colorschemes derived from different well-known palettes, because sometimes it's nice to mix things up, without sacrificing any principles.

## Screenshots

![tranquility](doc/tranquility.png)
Tranquility: based on [Selenized palette](https://github.com/jan-warchol/selenized)

![nordic-tranquility](doc/nordic-tranquility.png)
Nordic Tranquility: based on [Nord palette](https://www.nordtheme.com/)

![tranquilij-idea](doc/tranquilij-idea.png)
TranquiliJ IDEA: based on [IntelliJ IDEA palette](https://www.jetbrains.com/idea/)

![tranquil-dracula](doc/tranquil-dracula.png)
Tranquil Dracula: based on [Dracula palette](https://draculatheme.com/)

## Configuration

Install the plugin with your favorite plugin manager, for instance:

```vim
Plug 'jqno/tranquility.nvim'
```

Set your colorscheme; pick one:

```vim
colorscheme tranquility
colorscheme nordic-tranquility
colorscheme tranquilij-idea
colorscheme tranquil-dracula
```

## Inspiration

I first got the idea watching a talk by [Venkat Subramaniam](https://twitter.com/venkat_s), who uses a similar colorscheme in his editor.

Then I found a few colorschemes, like [Enfocado](https://github.com/wuelnerdotexe/vim-enfocado) and [zenbones.nvim](https://github.com/mcchrish/zenbones.nvim), which offer different colorschemes following a specific philosophy but based on different well-known color palettes.

Given that this colorscheme is written in the Lua programming language, whose name means moon in Portuguese; and that the first implemented palette was the [Selenized palette](https://github.com/jan-warchol/selenized), whose name also refers to the moon; the name of this colorscheme is inspired by the moon as well: specifically, the Sea of Tranquility, which nicely loops back to the quiet philosophy.
