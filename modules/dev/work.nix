{ config, pkgs, ... }:

let
  python' = with pkgs.python3.withPackages; [
    mypy
    black
    pandas
    pip
    notebook
    matplotlib
    python-lsp-server
    ipython-sql
  ];

  ocaml' = with pkgs.ocamlPackages; [
    findlib
    dune_3
    ocaml
    ocaml-lsp
    ocamlformat
    utop
  ];

  c' = with pkgs; [
    gcc
    clang
    clang-tools
    binutils
    coreutils
    gnumake
  ];

  typst' = with pkgs; [
    typst
    typst-lsp
    typst-fmt
  ];
in

{
  users.users.leopold = {
    packages = with pkgs; [
      vscode
      python'
      texlive.combined.scheme-full
      git
    ] ++ ocaml'
    ++ c'
    ++ typst';
  };
}
