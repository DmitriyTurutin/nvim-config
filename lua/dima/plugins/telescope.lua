local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
    return
end

local actions_setup, actions = pcall(require, "telecstop.actions")
if not actions_setup then
    return
end


telescope.load_extension("fzf")
require('telescope').setup{
  defaults = {
    mappings = {
      i = {
            ["C-k"] = actions.move_selections_previous,
            ["C-j"] = actions.move_selection_next,
            ["C-q"] = actions.send_selected_to_qflist + actions.open_qflist,
      }
    }
  }
}
