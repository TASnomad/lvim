local modules = {}

-- Remove plugin from modules.global.init
-- modules['kevinhwang91/rnvimr'] = false

-- Rewrite plugin settings from modules.global.init
-- modules['kevinhwang91/rnvimr'] = {
--     your code
-- }

-- Add new plugin
-- modules['sheerun/vim-polyglot'] = {
--     your code
-- }

modules["nvim-lua/plenary.nvim"] = { }
modules["f-person/git-blame.nvim"] = false
modules["nacro90/numb.nvim"] = {
        event = "BufRead",
        config = function()
                require "numb".setup { show_numbers = true, show_cursorline = true }
        end
}
modules["folke/todo-comments.nvim"] = {
        config = function()
                require "todo-comments".setup { }
        end,
        requires = "nvim-lua/plenary.nvim"
}


return modules
