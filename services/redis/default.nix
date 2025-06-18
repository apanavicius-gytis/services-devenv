{config, ...}:
let 
  port = builtins.fromJSON config.env.REDIS_PORT;
in
{
  services.redis = {
    enable = true;
    port =  port;
  };
}
