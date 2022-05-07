# O papel do módulo principal de uma aplicação Mix é inicializar uma Supervision Tree
# O módulo inicial de uma aplicação inicializa a supervision tree dela, ou seja, cria um processo que vai supervisionar os demais processos desta aplicação.
defmodule ElixirApplication.Application do
    # Essa linha informa que estamos inserindo neste módulo, todo o código em aplicação
    use Application

    # O código em aplicação chama essa função "start", em que são informados o tipo da aplicação, e os parâmetros que ela poderá receber
    def start(_type, _args) do
        # O array de "children" serão os filhos de um supervisor que serão utilizados quando o Supervisor for inicializado
        children = [
            # This is the new line
            # Esse é o nome do primeiro processo que o supervisor irá monitorar
            MainModule.Scheduler
        ]

        opts = [
            # Estratégia de supervisão que será usada no "Supervisor"
            strategy: :one_for_one, # one_for_one - Quando um processo morrer, um e somente um processo será criado
            name: ElixirApplication.Supervisor
        ]
        # Adiciona um novo processo através do módulo "Supervisor"
        Supervisor.start_link(children, opts)
    end
end