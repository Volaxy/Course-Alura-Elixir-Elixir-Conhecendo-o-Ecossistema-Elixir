defmodule ElixirApplication.WriteRandomNumber do
    def write do
        _file_path = Path.join([:code.priv_dir(:elixir_application), "file.txt"])

        random_number = :rand.uniform(1000)

        File.write!("C:/WS's/Alura/01 - Programação/05 - Elixir/03 - Elixir - Conhecendo o Ecossistema Elixir/05 - Testes/02 - Criando um Novo Teste/elixir_application/priv/number.txt", "Number: #{random_number}")
    end
end