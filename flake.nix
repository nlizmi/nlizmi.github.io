{
  description = "Jekyll site dev shell";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }:
  let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    devShells.${system}.default = pkgs.mkShell {
      buildInputs = [
        pkgs.ruby
        pkgs.bundler
        pkgs.nodejs
        pkgs.zlib
        pkgs.libxml2
        pkgs.libxslt
        pkgs.libyaml
      ];
    };
  };
}
