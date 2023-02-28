{ config, lib, pkgs, ... }:

{
  imports = [
    ../../editors/emacs/doom-emacs
    ../../shells/git
    ../../shells/zsh
    ../../shells/terminal
    ../../lang/latex
    ../../lang/markdown
    ../../lang/python

  ];

  home = {
    username = "panyan";
    homeDirectory = "/Users/panyan";
    stateVersion = "22.11";
  };

}
