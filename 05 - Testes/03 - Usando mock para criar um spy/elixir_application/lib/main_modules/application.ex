defmodule ElixirApplication.Application do
    use Application

    def start(_type, _args) do
        children = [
            ElixirApplication.RandomServer,
            ElixirApplication.Scheduler
        ]

        opts = [
            strategy: :one_for_one,
            name: ElixirApplication.Supervisor
        ]
        
        Supervisor.start_link(children, opts)
    end
end