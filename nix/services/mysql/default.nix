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

    initialDatabases = [
      { name = "db1"; }
      { name = "db2"; }
    ];

    settings = {
      mysqld = {
        port = config.env.MYSQL_PORT;
      };
    };
  };
}
