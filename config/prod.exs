use Mix.Config

# ## SSL Support
#
# To get SSL working, you will need to set:
#
#     https: [port: 443,
#             keyfile: System.get_env("SOME_APP_SSL_KEY_PATH"),
#             certfile: System.get_env("SOME_APP_SSL_CERT_PATH")]
#
# Where those two env variables point to a file on
# disk for the key and cert.

# port = 5000
{port, _ } =Integer.parse(System.get_env("PORT"))
config :phoenix_crud, PhoenixCrud.Endpoint,
  url: [host: "example.com"],
  http: [port: port],
  secret_key_base: "gdvAykmlmy8c+s2SX4rp6yymghJYRmuRe2RkX67C93hSL5MyvJ7huf4pTohlmUZR"

# Do not pring debug messages in production
config :logger, level: :info

# ## Using releases
#
# If you are doing OTP releases, you need to instruct Phoenix
# to start the server for all endpoints:
#
#     config :phoenix, :serve_endpoints, true
#
# Alternatively, you can configure exactly which server to
# start per endpoint:
#
#     config :phoenix_crud, PhoenixCrud.Endpoint, server: true
#


config :phoenix, :database,
  url: System.get_env("DATABASE_URL")
