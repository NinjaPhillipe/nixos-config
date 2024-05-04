{ config, pkgs, ... }:
{
  programs.helix = {

    enable = true;

    settings = {
      editor = {
        line-number = "relative";
      };
    };

    languages = {
      language = [
      {
        name = "rust";
        formatter = { command = "rustfmt"; };
        auto-format = true;
        language-servers = [ "rust-analyzer" ];
        
      }
      ];
      language-server.rust-analyzer.config = {
         checkOnSave = {command = "clippy"; };
      };
    };
  };
}
