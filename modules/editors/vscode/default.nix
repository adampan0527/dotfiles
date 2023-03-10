#
# Doom Emacs: Personally not a fan of github:nix-community/nix-doom-emacs due to performance issues
# This is an ideal way to install on a vanilla NixOS installion.
# You will need to import this from somewhere in the flake (Obviously not in a home-manager nix file)
#
# flake.nix
#   ├─ ./hosts
#   │   └─ configuration.nix
#   └─ ./modules
#       └─ ./editors
#           └─ ./vscode
{
  config,
  lib,
  pkgs,
  pkgs-unstable,
  inputs,
  ...
}: {
  programs.vscode = {
    enable = true;
    enableUpdateCheck = false;
  };
}