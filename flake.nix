nix

{
  description = "Mental breakdown express";
  
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
  
  outputs = { self, nixpkgs }: {
    nixosConfigurations = {
      tac = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [ ./hosts/tac/configuration.nix ];
      };
      mason = nipkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [ ./hosts/mason/configuration.nix ];
    };
  };
};
