{ config, lib, pkgs, ... }:

{
  imports = [
    ../../editors/emacs/doom-emacs
    ../../editors/vscode
    ../../shells/git
    ../../shells/zsh
    ../../shells/fish
    ../../shells/terminal
    ../../lang/latex
    ../../lang/markdown
    ../../lang/python
    ../../lang/cpp

  ];

  home = {
    username = "panyan";
    homeDirectory = "/Users/panyan";
    stateVersion = "22.11";
  };

}
