defmodule Mix.Tasks.Write do
    # O "@moduledoc", introduz uma documentação longa da tarefa criada, para acessa-la:
    # 1º) Temos que executar a aplicação usando "iex -S mix write" ou "mix compile" para ele compilar o módulo.
    # 2º) Usamos a combinação de teclas "CTRL + C" para sair da aplicação, e usamos o comando "mix help write" para acessar a documentação da tarefa.
    # O "@moduledoc" já é acessado pelo próprio Elixir por padrão
    @moduledoc """
    Run `mix write` to write inside the file located in "priv/number.txt"
    """

    # Esse trecho pega o código do mix que define uma tarefa e adiciona neste módulo, assim o "@shortdoc" poderá ser acessado ao usar o comando "mix help"
    use Mix.Task

    # O "@shortdoc" cria uma documentação curta da tarefa
    # O "@shortdoc" não é utilizado por padrão, é preciso adicionar o código do mix para ele ser acessado no "mix help" através da lista de comandos
    @shortdoc "Write a random number into a file \"number.txt\""

    def run(_) do
        MainModule.WriteRandomNumber.write
    end
end