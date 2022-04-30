defmodule ElixirApplication.MixProject do
  use Mix.Project # A diretiva "use" injeta código no módulo, onde ela pega tudo que está dentro de "Mix.Project" e armazena dentro do módulo

  def project do
    [
      app: :elixir_application,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps() # Essa linha define as dependências da aplicação
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  # O projeto inicia a partir dessa função
  def application do
    [
      extra_applications: [:logger]
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
