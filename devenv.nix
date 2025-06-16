{ pkgs, lib, config, inputs, ... }:

{
  dotenv.enable = true;

  imports = [
    ./nix/services
  ];

  packages = [ pkgs.podman ];

}
