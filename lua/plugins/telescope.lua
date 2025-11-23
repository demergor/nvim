return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require('telescope').setup{
                defaults = {
                    -- Optional: customize default options here
                    file_ignore_patterns = {"node_modules", ".git/"},
                    prompt_prefix = "🔍 ",
                }
            }
        end
    }
}
