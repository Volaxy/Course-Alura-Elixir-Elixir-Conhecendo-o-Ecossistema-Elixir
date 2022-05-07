defmodule ElixirApplication.Application do
    use Application

    def start(_type, _args) do
        children = [
            # This is the new line
            ElixirApplication.Scheduler
        ]

        opts = [
            strategy: :one_for_one,
            name: ElixirApplication.Supervisor
        ]
        
        Supervisor.start_link(children, opts)
    end
end