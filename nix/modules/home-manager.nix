# nix/modules/home-manager.nix — auto-generated from bevy_window.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.bevy_window; in {
  options.programs.bevy_window = {
    enable = lib.mkEnableOption "bevy_window";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bevy_window or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
