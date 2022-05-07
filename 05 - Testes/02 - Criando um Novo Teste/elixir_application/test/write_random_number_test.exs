defmodule ElixirApplicationTest.WriteRandomNumberTest do
    use ExUnit.Case

    test "2 writes to the file generate different numbers" do
        ElixirApplication.WriteRandomNumber.write
        first_content = File.read!("C:/WS's/Alura/01 - Programação/05 - Elixir/03 - Elixir - Conhecendo o Ecossistema Elixir/05 - Testes/02 - Criando um Novo Teste/elixir_application/priv/number.txt")
        
        ElixirApplication.WriteRandomNumber.write
        second_content = File.read!("C:/WS's/Alura/01 - Programação/05 - Elixir/03 - Elixir - Conhecendo o Ecossistema Elixir/05 - Testes/02 - Criando um Novo Teste/elixir_application/priv/number.txt")

        assert first_content != second_content
    end
end