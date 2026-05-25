# nix/modules/nixos.nix — auto-generated from bevy_window.caixa.lisp
# description: "Provides windowing functionality for Bevy Engine"
{ config, lib, pkgs, ... }:
let
  cfg = config.services.bevy_window;
in {
  options.services.bevy_window = {
    enable = lib.mkEnableOption "bevy_window";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.bevy_window or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
