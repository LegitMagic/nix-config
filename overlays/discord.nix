{ config, pkgs, ... }:
{
  nixpkgs.overlays = [ (
    self: super:
    {
      discord = super.discord.override {
        withOpenASAR = true;
        nss = pkgs.nss_latest;
      };
    }
  ) ];
}