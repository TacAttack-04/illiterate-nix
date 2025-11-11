nix

{
  security.sudo.enable = true
  users.users.tac = {
    isNoramalUser = true;
    extraGroups = [ "wheel" ];
  };

  environment.systemPackages = with pkgs; [
    nano
    curl
    wget
    unzip
    discord
    spotify
    firefox
    prismlauncher
  ];
}
