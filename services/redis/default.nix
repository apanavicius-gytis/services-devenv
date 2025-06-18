{config, ...}:
{
  services.redis = {
    enable = true;
    port = config.env.REDIS_PORT;
  }
}
