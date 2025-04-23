local languages = {"python", "java", "lua"}

return {
    ensure_installed = languages,
    highlight = {
        enable = true,
        disable = function(lang, buffer)
            for _, name in ipairs(languages) do
                if name == lang then
                    return false
                end
            end
            return true
        end
    }
}

