{config, ...}:
{
  services.mysql = {
    enable = true;

    ensureUsers = [
      {
        name = "root";
        password = "root";
      }
    ];

    settings = {
      mysqld = {
        port = config.env.MYSQL_PORT;
      };
    };
  };
}
