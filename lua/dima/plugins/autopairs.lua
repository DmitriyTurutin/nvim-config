local pairs_setup, autopairs = pcall(require, "nvim-autopairs")

if not pairs_setup then
    return
end

autopairs.setup()
