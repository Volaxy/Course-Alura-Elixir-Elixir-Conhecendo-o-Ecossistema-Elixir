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
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # Nesta linha, importamos um pacote (neste caso, do site do Hex.pm)
      {:quantum, "~> 3.4"}
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end