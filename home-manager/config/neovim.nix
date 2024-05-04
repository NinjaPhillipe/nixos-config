{config, pkgs, ...}:
{
        programs.ripgrep.enable = true;


        programs.neovim.enable = true;

        #Autocompletion 
        programs.neovim.coc.enable = true;

        programs.neovim.plugins = with pkgs; [
                # Theme 
                {
                        plugin = vimPlugins.onehalf;
                        config = ''
                                set background=dark
                                colorscheme onehalfdark
                        '';
    
                }

                {
                        plugin = vimPlugins.telescope-nvim;
                        config = ''
        "<leader>ff" = "<cmd> Telescope find_files<CR>";
        "<leader>fg" = "<cmd> Telescope live_grep<CR>";
        "<leader>fh" = "<cmd> Telescope help_tags<CR>";
        "<leader>ft" = "<cmd> Telescope<CR>";
                        '';
                }       
                
                {
                        plugin = vimPlugins.harpoon2;
                        config = ''

                        '';
                }

                vimPlugins.nvim-treesitter

                #Icons
                vimPlugins.vim-devicons
    
                #Language support
                vimPlugins.vim-nix
                vimPlugins.coc-python
                vimPlugins.coc-go
                vimPlugins.vim-javascript
                vimPlugins.coc-css
                vimPlugins.coc-emmet
                vimPlugins.coc-html
                vimPlugins.coc-json
                vimPlugins.haskell-vim

                vimPlugins.vim-markdown
                vimPlugins.markdown-preview-nvim
        ];

        programs.neovim.extraConfig = ''
                set number relativenumber

                set smarttab
                set tabstop=8
                set expandtab
                set shiftwidth=8

                set clipboard+=unnamedplus 
                                  " Find files using Telescope command-line sugar.
                nnoremap <leader>ff <cmd>Telescope find_files<cr>
                nnoremap <leader>fg <cmd>Telescope live_grep<cr>
                nnoremap <leader>fb <cmd>Telescope buffers<cr>
                nnoremap <leader>fh <cmd>Telescope help_tags<cr>    
        '';

}
