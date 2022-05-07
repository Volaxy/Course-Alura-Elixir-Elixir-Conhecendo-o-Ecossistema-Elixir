# Para executar uma Task, no momento de iniciar nossa aplicação, usamos a sintaxe de "iex -S mix TASK_NAME", onde o nome da tarefa no código será escrito em CamelCase, mas o nome da tarefa na linha de comando será escrito em snake_case
# Para criar uma tarefa, usamos a função "run" para implementar a função padrão que irá ser executada quando o comando for digitado
defmodule Mix.Tasks.Write do
    def run(_) do
        MainModule.WriteRandomNumber.write
    end
end