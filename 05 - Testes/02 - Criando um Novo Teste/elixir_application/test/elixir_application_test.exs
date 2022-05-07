defmodule ElixirApplicationTest do
  use ExUnit.Case
  # Isso permite executar os "doctest", presente no arquivo especificado abaixo, como exemplo (ElixirApplication), quando esse arquivo é executado
  doctest ElixirApplication

  test "greets the world" do
    assert ElixirApplication.hello() == :world
  end
end
