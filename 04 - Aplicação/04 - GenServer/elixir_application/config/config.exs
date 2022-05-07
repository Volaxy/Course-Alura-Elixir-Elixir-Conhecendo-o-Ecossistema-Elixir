import Config

config :elixir_application,
ElixirApplication.Scheduler,
jobs: [
    # Este módulo manda mensagens para processos, ou seja, que se comunique com eles, nesta função, ele envia a mensagem, e não espera uma resposta, passando como parâmetro o nome do servidor
    {"* * * * *", fn -> GenServer.cast(:random_server, :write) end}
]