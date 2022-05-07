defmodule ElixirApplication do
  @moduledoc """
  Documentation for `ElixirApplication`.
  """

  # Essa documentação também é executada, facilitando a manutenção do código e dos testes
  # Se a documentação da função tiver um bloco indentado começando com iex> ou ...> seguido de um exemplo de código, este código será executado e seu retorno será comparado com o que estiver na linha seguinte. Através da chamada de doctest NomeDoModulo no módulo de testes nós informamos que queremos executar os doctests.
  @doc """
  Hello world.

  ## Examples

      iex> ElixirApplication.hello()
      :world

  """
  def hello do
    :world
  end
end
