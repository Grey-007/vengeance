return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#110e0e", -- Default background
                base01 = "#b09b9e", -- Lighter background (status bars)
                base02 = "#110e0e", -- Selection background
                base03 = "#b09b9e", -- Comments, invisibles
                base04 = "#fafaf9", -- Dark foreground
                base05 = "#faf9f9", -- Default foreground
                base06 = "#faf9f9", -- Light foreground
                base07 = "#fafaf9", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#e01b24", -- Variables, errors, red
                base09 = "#e46767", -- Integers, constants, orange
                base0A = "#f66151", -- Classes, types, yellow
                base0B = "#57e389", -- Strings, green
                base0C = "#eec0aa", -- Support, regex, cyan
                base0D = "#e4676d", -- Functions, keywords, blue
                base0E = "#e46867", -- Keywords, storage, magenta
                base0F = "#e8c5b0", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
