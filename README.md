# JTS3ServerMod
JTS3 Server Mod from https://www.stefan1200.de/forum/index.php?topic=2.0

## Usage

Just run `docker-compose.yml`:

```bash
docker-compose up
```

## Configuration

You can copy `docs/` directory to the `/app/config`'s directory of the container ( via a Volume )

You must adapt configuration of `config/server1/JTS3ServerMod_server.cfg`:
```
ts3_server_address = ts3.server.net
# Teamspeak 3 server query port, default is 10011 (raw) and 10022 (ssh)
ts3_server_query_port = 10011
# Teamspeak 3 server query admin account name
ts3_server_query_login = serveradmin
# Teamspeak 3 server query admin password
ts3_server_query_password = password
```

## Volumes

Theses volumes are available if you use the configuration files provided in the `docs/` directory.
- Configuration: `/app/config`
- Log: `/app/JTS3ServerMod_server1_login.csv`
