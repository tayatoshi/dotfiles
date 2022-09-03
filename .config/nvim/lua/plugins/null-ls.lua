require("null-ls").setup({
    sources = {
        -- Formatting
        require("null-ls").builtins.formatting.black,        --Formatter for python
        require("null-ls").builtins.formatting.sql_formatter,       --Formatter for sql

        -- Diagnostics
        require("null-ls").builtins.diagnostics.mypy,     --Diagnostics for python
        require("null-ls").builtins.diagnostics.sqlfluff,     --Diagnostics for sql
    },
})
