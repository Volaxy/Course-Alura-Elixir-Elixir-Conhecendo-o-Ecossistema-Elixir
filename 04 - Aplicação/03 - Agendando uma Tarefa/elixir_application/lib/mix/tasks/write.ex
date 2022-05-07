defmodule Mix.Tasks.Write do
    @moduledoc """
    Run `mix write` to write inside the file located in "priv/number.txt"
    """

    use Mix.Task

    @shortdoc "Write a random number into a file \"number.txt\""

    def run(_) do
        ElixirApplication.WriteRandomNumber.write
    end
end