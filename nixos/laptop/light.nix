{ config, list, pkgs, ...}:
{
  users.users.akira.extraGroups = [ "video" ];
  programs.light.enable = true;
}
