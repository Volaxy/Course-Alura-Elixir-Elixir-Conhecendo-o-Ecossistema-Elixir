defmodule ElixirApplicationTest.WriteRandomNumberTest do
    use ExUnit.Case
    
    import Mock

    test "2 writes to the file generate different numbers" do
        ElixirApplication.WriteRandomNumber.write
        first_content = File.read!("C:/WS's/Alura/01 - Programação/05 - Elixir/03 - Elixir - Conhecendo o Ecossistema Elixir/05 - Testes/03 - Usando mock para criar um spy/elixir_application/priv/number.txt")
        
        ElixirApplication.WriteRandomNumber.write
        second_content = File.read!("C:/WS's/Alura/01 - Programação/05 - Elixir/03 - Elixir - Conhecendo o Ecossistema Elixir/05 - Testes/03 - Usando mock para criar um spy/elixir_application/priv/number.txt")

        assert first_content != second_content
    end

    test "mock - 2 writes to the file generate different numbers" do
        :ets.new(:content, [:set, :private, :named_table])

        with_mock File, [write!: fn(_path, content) -> :ets.insert_new(:content, {content}) end] do
            ElixirApplication.WriteRandomNumber.write
            ElixirApplication.WriteRandomNumber.write
        end

        contents = :ets.tab2list(:contents)
        [first_value | contents] = contents
        [second_value | _] = contents

        assert first_value != second_value
    end
end