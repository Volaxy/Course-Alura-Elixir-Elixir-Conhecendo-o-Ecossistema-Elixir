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

      # A função "send" não interrompe o nosso processo, ela é adicionada à MailBox, ou caixa de correio, do processo destino, ou seja, adiciona no processo principal (nesse exemplo), uma mensagem
      send(self(), {:ok, "Process"})

      # O método "receive" por outro lado, interrompe o processo atual
      receive do
        {:ok, content} -> IO.puts(content)
        # O bloco "after" é executado depois de x milisegundos caso o receive não receba nenhuma mensagem
        after
          1000 -> IO.puts("Error")
      end
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