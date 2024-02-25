local M = {}

M.disabled = {
  n = {
    ["<leader>x"] = "",
    ["<leader>b"] = "",
  }

}
M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = { "<cmd> DapToggleBreakpoint <CR>" },
    ["<leader>dus"] = {
      function()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
    },
    ["<leader>dpr"] = {
      function()
        require('dap-python').test_method()
      end
    }
  }
}

M.crates = {
  plugin = true,
  n = {
    ["<leader>rcu"] = {
      function()
        require('crates').upgrade_all_crates()
      end,
      "update crates"
    }
  }
}

M.general = {
  n = {
    ["<leader>0"] = {
      "<cmd> NvimTreeToggle <CR>", "Nvim Tree Toggle"
    },
    ["<leader>/"] = { "<cmd> Telescope live_grep <CR>", "Search String" },
    -- Buffers
    ["<leader>bd"] = { "<cmd> bdelete", "Close buffer" },
    ["<leader>bn"] = { "<cmd> badd", "Close buffer" },
    ["<leader>bb"] = { "<cmd> Telescope buffers", "Open Buffers" },
    -- Better window navigation
    ["<C-h>"] = { "<C-w>h", "" },
    ["<C-j>"] = { "<C-w>j", "" },
    ["<C-k>"] = { "<C-w>k", "" },
    ["<C-l>"] = { "<C-w>l", "" },
    -- Resize with arrows
    ["<C-Up>"] = { ":resize -2<CR>", "" },
    ["<C-Down>"] = { ":resize +2<CR>", "" },
    ["<C-Left>"] = { ":vertical resize -2<CR>", "" },
    ["<C-Right>"] = { ":vertical resize +2<CR>", "" },
    -- Navigate buffers
    ["<S-l>"] = { ":bnext<CR>", "" },
    ["<S-h>"] = { ":bprevious<CR>", "" },
    -- 
    ["<leader>fs"] = { ":w<CR>", "Save file"},
    ["<leader>fS"] = { ":wa<CR>", "Save files"},
  },
  i = {
    ["jk"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
  }
}
return M
