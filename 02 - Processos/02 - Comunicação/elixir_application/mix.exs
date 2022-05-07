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

      # O "receive" é uma macro que executa algum código quando recebe uma mensagem
      pid = spawn(fn -> receive do # NOT FUNCTIONAL CODE
          content -> IO.puts(content) # NOT FUNCTIONAL CODE
          end # NOT FUNCTIONAL CODE
        end # NOT FUNCTIONAL CODE
      ) # NOT FUNCTIONAL CODE

      # A função "send" envia uma mensagem passando como parâmetro o pid em que será o processo da mensagem e a mensagem em si
      # Assim que a função de recebimento recebe a mensagem, o processo não fica mais ativo
      send(pid, "Text to be displayed in the child process") # NOT FUNCTIONAL CODE

      # O "self()" retorna o próprio processo atual, que no caso será o programa executando
      self() # NOT FUNCTIONAL CODE
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