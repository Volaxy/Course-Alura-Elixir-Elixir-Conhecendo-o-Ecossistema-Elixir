defmodule MainModule.Scheduler do
    # O "use Quantum" significa que esse arquivo vai utilizar todo o código dentro do módulo "Quantum", e adicionar neste módulo, informando como parâmetro, qual é a aplicação
    # O "otp" significa: Open Telecom Platform, ou seja, o OTP é um conjunto de bibliotecas que são disponibilizadas com Erlang. O conceito de Supervision tree vem desta plataforma, por exemplo.
    use Quantum, otp_app: :elixir_application
end