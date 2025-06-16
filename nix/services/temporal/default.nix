{config, lib, ...}:
let
  namespaces = lib.splitString "," config.env.TEMPORAL_NAMESPACES;
  temporal_grpc_port = builtins.fromJSON config.env.TEMPORAL_GRPC_PORT;
  temporal_ui_port = builtins.fromJSON config.env.TEMPORAL_UI_PORT;
in
{
  services.temporal = {
    enable = true;
    namespaces = namespaces;
    port = temporal_grpc_port;

    state = {
      ephemeral = false;
    };

    ui = {
      enable = true;
      port = temporal_ui_port;
    };
  };
}
