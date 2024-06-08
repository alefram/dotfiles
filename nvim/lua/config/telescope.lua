require('telescope').setup{
    defaults = {
        file_ignore_patterns = {"node_modules", "vendor", "venv", "public"},
        border = false,
        sorting_strategy = "ascending",
    }
}
