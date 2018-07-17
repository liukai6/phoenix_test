# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :demo1,
  ecto_repos: [Demo1.Repo]

# Configures the endpoint
config :demo1, Demo1Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ahcKQhaWSD+g1BAwHlnqRw8u5x3FAaGJP8SLuqb5Xb/JJJn+inc17e3z7MWiGZ7i",
  render_errors: [view: Demo1Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Demo1.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
