local function SuggestOneCharacter()
  local suggestion = vim.fn['copilot#Accept']("")
  local bar = vim.fn['copilot#TextQueuedForInsertion']()
  return bar[0]
end
local function SuggestOneWord()
  local suggestion = vim.fn['copilot#Accept']("")
  local bar = vim.fn['copilot#TextQueuedForInsertion']()
  return vim.split(bar,  '[ .]\zs')[0]
end

vim.keymap.set('i', '<C-l>', SuggestOneCharacter, {expr = true, remap = false})
vim.keymap.set('i', '<C-left>', SuggestOneWord, {expr = true, remap = false})
