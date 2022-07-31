
vim.cmd([[ let &runtimepath.=','.fnameescape("E:\\Users\\VS_Code_Workspace\\Vim\\planner.vim") ]])
vim.cmd([[nnoremap <leader>td :PlannerTodoDone<CR>]])
vim.cmd([[nnoremap <leader>tt :PlannerTodoToggle<CR>]])
vim.cmd([[nnoremap <leader>ti :PlannerTodoInsert<CR>]])
vim.cmd([[nnoremap <expr> <leader>tD planner#PlannerMoveToSection("# Done")]])

