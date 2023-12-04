{ lib, inputs, ... }:

with lib;
{
  nix =
    let
      filteredInputs = filterAttrs (n: _: n != "self") inputs;
      registryInputs = mapAttrs (_: v: { flake = v; }) filteredInputs;
    in
    {
      # add Nix registry, including this flake with the 'dotfiles' name.
      registry = registryInputs // { dotfiles.flake = inputs.self; };

      settings = {
        experimental-features = [ "nix-command" "flakes" ];
        substituters = [ "https://nix-community.cachix.org" ];
        trusted-public-keys = [
          "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
        ];
        auto-optimise-store = true;
      };
    };
}