{ pkgs, ... }:

{
  environment.systemPackages = [ pkgs.helix ];

  home-manager.users.leopold.programs.helix = {
    enable = true;

    settings = {
      theme = "gruvbox";
      editor = {
        cursorline = true;
        line-number = "relative";
        lsp.display-messages = true;
      };
      keys = {
        normal = {
          C-s = ":w";
          L = "goto_line_end";
          H = "goto_line_start";
          X = [ "extend_line_up" "extend_to_line_bounds" ];
        };
        select = {
          L = "goto_line_end";
          H = "goto_line_start";
          X = [ "extend_line_up" "extend_to_line_bounds" ];
        };
      };
    };

    languages = builtins.fromTOML (builtins.readFile ./languages.toml);

    themes = {
      gruvbox = builtins.fromTOML (builtins.readFile ./gruvbox.toml);
    };
  };
}
