import Config

config :elixir_application, # Essa função recebe o nome do projeto
ElixirApplication.Scheduler, # O módulo que está sendo configurado
# Configurações que irão ser configuradas
jobs: [
    # Essa função irá executar de minuto em minuto
    {"* * * * *", fn -> IO.puts("Running scheduled task") end}
]