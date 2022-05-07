defmodule ElixirApplicationTest do
  use ExUnit.Case
  doctest ElixirApplication

  test "greets the world" do
    assert ElixirApplication.hello() == :world
  end
end
