nix

{
  security.sudo.enable = true
  users.users.mason = {
    isNoramalUser = true;
    extraGroups = [ "wheel" ];
  };

  environment.systemPackages = with pkgs; [
    unzip
    discord
    spotify
    firefox
  ];
}
