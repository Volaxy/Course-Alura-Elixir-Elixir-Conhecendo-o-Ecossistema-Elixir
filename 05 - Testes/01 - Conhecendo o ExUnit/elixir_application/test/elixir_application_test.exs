defmodule ElixirApplicationTest do
  use ExUnit.Case
  doctest ElixirApplication

  test "greets the world" do
    assert ElixirApplication.hello() == :world
  end

  # Isso indica que esse teste tem a tag "fail"
  @tag fail: true
  test "fail test" do
    assert ElixirApplication.hello() != :world
  end
end
