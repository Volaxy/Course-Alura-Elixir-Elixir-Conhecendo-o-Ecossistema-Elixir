# Elixir - Conhecendo o Ecossistema Elixir

Curso da Alura sobre conceitos avançados do Elixir usando o **Mix** para criar uma aplicação, e usar testes

## Objetivo Final &#x1F3AF;

Construir um programa usando a linguagem **Elixir**

URL do curso -> [Elixir - Conhecendo o Ecossistema Elixir](https://cursos.alura.com.br/course/elixir-conhecendo-ecossistema-elixir)

![Elixir - Conhecendo o Ecossistema Elixir](https://www.alura.com.br/assets/api/share/curso-elixir-conhecendo-ecossistema-elixir.png)

## Links Úteis &#x1F517;
* [Hex](https://hex.pm/) - Site oficial do **Hex** para pacotes do **Erlang**.

## Siglas &#x1F5FA;
*

## Atalhos &#x2328;
*

## 01 - Ecossistema &#x1F516;
* Ecossistema do **Elixir**.
* Usar o **Hex** para gerenciar pacotes.
* O que é o **Supervisor**.
* Usar o **Mix**.

### 01 - Supervisor
* O que é um **supervisor**.

### 02 - Entendendo o Mix
* Como criar uma aplicação **Elixir** com `mix new APP_NAME`.
* Estrutura de uma aplicação **Elixir**.

***

## 02 - Processos &#x1F516;
* Aprendemos a criar processos em Elixir.
* Vimos como processos se comunicam.
* Entendemos que processos são a base de uma aplicação em Elixir.
* Conhecemos detalhes sobre processos.

### 01 - Spawn
* Criar um novo processo com `spawn`.
* Verificar se um processo está ativo ou não com `Process.alive?`.

### 02 - Comunicação
* Criar função de recebimento de mensagens com `receive`.
* Enviar mensagens com a função `send`.

### 03 - Detalhes
* Detalhes da função `send`.
* Especificar tempo de espera com `after`.

***

## 03 - Mix Tasks &#x1F516;
* Vimos que podemos criar um código "comum" em projetos Mix.
* Aprendemos a criar uma tarefa do Mix.
* Aprendemos um pouco sobre documentação em Elixir.

### 01 - Criando um Código
* Criar uma pasta `priv`.
* Escrever números aleatórios em um arquivo.

### 02 - Gerando uma Tarefa
* Executar tarefas com `iex -S mix TASK_NAME` ou `mix TASK_NAME` (antes de executar a aplicação **Elixir**).

### 03 - Documentando a Tarefa
* Criar documentação do **Módulo** com `@moduledoc`.
* Acessar a documentação longa através do `mix help TASK_NAME`.
* Criar documentação curta com `@shortdoc`.
* Adicionar documentação de uma tarefa na lista do `mix help`.

***

## 04 - Aplicação
* Gerenciamos nossa primeira dependência (pacote externo).
* Efetivamente criamos uma aplicação Mix.
* Definimos configurações para o projeto Mix.
* Utilizamos o conceito de GenServer para receber mensagens.

### 01 - Instalando uma Dependência
* Adicionar uma dependência no arquivo *mix.ex*.
* Buscar todas as dependências que foram definidas com `mix deps.get`.
* Utilizar um módulo dentro de uma aplicação.

### 02 - Criando uma Aplicação
* Entender a finalidade do módulo da aplicação.
* Criar uma **Supervision Tree**.
* Entendendo o módulo do **Supervisor**.
* Adicionar a aplicação no módulo *mix.ex*.

### 03 - Agendando uma Tarefa
* Definir as configurações de um projeto com *config.exs*.
* Executar a aplicação com `mix run`.
    * Ao usar o comando do `mix run`, a aplicação encerra, pois não há serviços ou processos executando, logo ele termina a aplicação.
* O comando `mix run --no-halt` faz o mesmo processo que o `mix run`, mas:
    * Pegar o arquivo *mix.exs*, compilar todos os arquivos.
    * Gerar uma aplicação do Erlang com todas as configurações feitas na aplicação.
    * Executar o módulo principal, e esse módulo principal inicializa a **Supervision Tree**.
* Monitorar a VM da Erlang através do `:observer.start`.

### 04 - GenServer
* Referênciar o próprio módulo com `__MODULE__`.
* Enviar mensagens para processos.