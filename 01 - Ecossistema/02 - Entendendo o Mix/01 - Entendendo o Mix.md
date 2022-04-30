Para criar uma aplicação em **Elixir**, usamos o comando `mix new elixir_application`, onde ele irá criar uma aplicação com o nome "elixir_application". Podemos passar o parâmetro `--module MODULE_NAME` para especificar o nome do módulo, onde o padrão do nome é sempre uma o *CamelCase*. Para criar uma raiz de supervisão, podemos passar o parâmetro `--sup`, onde ele irá criar um supervisor central.
O comando `mix test` instrui o **mix** a executar algo, ou alguma tarefa.

# Estrutura de uma Aplicação Elixir:
* A pasta *lib* é responsável por armazenar todo o código **Elixir** criado por nós.
* A pasta *test* guarda todos os arquivos de testes.
* O arquivo *mix.exs* é o arquivo principal da aplicação.