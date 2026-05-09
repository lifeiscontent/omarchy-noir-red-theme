return {
  {
    "bjarneo/vantablack.nvim",
    priority = 1000,
    config = function()
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "vantablack",
        callback = function()
          local red = "#C1121F"
          local red_hot = "#D61F2D"
          local black = "#030303"
          local panel = "#101010"
          local fg = "#EDE7DD"
          local muted = "#565656"

          vim.api.nvim_set_hl(0, "Normal", { fg = fg, bg = "NONE" })
          vim.api.nvim_set_hl(0, "NormalFloat", { fg = fg, bg = black })
          vim.api.nvim_set_hl(0, "FloatBorder", { fg = red, bg = black })
          vim.api.nvim_set_hl(0, "CursorLine", { bg = panel })
          vim.api.nvim_set_hl(0, "Visual", { fg = black, bg = fg })
          vim.api.nvim_set_hl(0, "Search", { fg = black, bg = red })
          vim.api.nvim_set_hl(0, "IncSearch", { fg = black, bg = red_hot })
          vim.api.nvim_set_hl(0, "LineNr", { fg = muted })
          vim.api.nvim_set_hl(0, "CursorLineNr", { fg = red, bold = true })
          vim.api.nvim_set_hl(0, "Pmenu", { fg = fg, bg = black })
          vim.api.nvim_set_hl(0, "PmenuSel", { fg = black, bg = red })
          vim.api.nvim_set_hl(0, "StatusLine", { fg = black, bg = fg })
          vim.api.nvim_set_hl(0, "StatusLineNC", { fg = muted, bg = black })
          vim.api.nvim_set_hl(0, "DiagnosticError", { fg = red_hot })
          vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = red })
        end,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vantablack",
    },
  },
}
