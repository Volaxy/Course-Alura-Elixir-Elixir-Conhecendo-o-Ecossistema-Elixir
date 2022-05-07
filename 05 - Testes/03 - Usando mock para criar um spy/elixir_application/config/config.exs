import Config

config :elixir_application,
ElixirApplication.Scheduler,
jobs: [
    {"* * * * *", fn -> GenServer.cast(:random_server, :write) end}
]