return {
    'navarasu/onedark.nvim',
    priority = 1000, -- Ensure it loads first

    config = function()
        local configs= require('onedark')

        configs.setup {
            style = 'deep',
            transparent = true,
        }
        require('onedark').load()
    end
}
