# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

# This configuration is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project. For this reason,
# if you want to provide default values for your application for third-
# party users, it should be done in your mix.exs file.

# Sample configuration:
#
#     config :logger, :console,
#       level: :info,
#       format: "$date $time [$level] $metadata$message\n",
#       metadata: [:user_id]

config :mu_identifier,
  encryption_salt: System.get_env("MU_ENCRYPTION_SALT"),
  signing_salt: System.get_env("MU_SIGNING_SALT"),
  secret_key_base: System.get_env("MU_SECRET_KEY_BASE"),
  default_access_control_allow_origin_header: System.get_env("DEFAULT_ACCESS_CONTROL_ALLOW_ORIGIN_HEADER"),
  default_mu_auth_allowed_groups_header: System.get_env("DEFAULT_MU_AUTH_ALLOWED_GROUPS_HEADER")

# It is also possible to import configuration files, relative to this
# directory. For example, you can emulate configuration per environment
# by uncommenting the line below and defining dev.exs, test.exs and such.
# Configuration from the imported file will override the ones defined
# here (which is why it is important to import them last).
#
#     import_config "#{Mix.env}.exs"
