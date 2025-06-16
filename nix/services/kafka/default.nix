{...}:
{
  imports = [
    ./ui.nix
    ./topics.nix
  ];

  services.kafka = {
    enable = true;
  };
}
