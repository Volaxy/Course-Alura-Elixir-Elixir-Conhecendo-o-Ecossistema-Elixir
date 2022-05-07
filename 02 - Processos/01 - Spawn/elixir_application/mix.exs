defmodule ElixirApplication.MixProject do
  use Mix.Project # A diretiva "use" injeta código no módulo, onde ela pega tudo que está dentro de "Mix.Project" e armazena dentro do módulo

  def project do
    [
      app: :elixir_application,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
      # Essa função cria um novo processo passando uma função como parâmetro
      spawn(fn -> IO.puts("Process initialized") end) # NOT FUNCTIONAL CODE
      
      pid = spawn(fn -> IO.puts("Process initialized") end) # NOT FUNCTIONAL CODE
      # Essa função verifica se um processo está ativo ou não retornando "true" ou "false" respectivamente
      Process.alive?(pid) # NOT FUNCTIONAL CODE
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end