defmodule ElixirApplication.RandomServer do
    use GenServer

    def start_link(_) do
        # Inicia um servidor passando como parâmetro:
        # 1º) O módulo que irá inicializar o servidor em si.
        # 2º) Mensagem inicial quando o servidor for inicializado. - Este parâmetro pode ser passado para uma função de inicialização
        # 3º) Configurações do servidor.
        # Caso seja preciso iniciar o módulo dentro do próprio módulo, pode-se usar o "__MODULE__"
        GenServer.start_link(__MODULE__, :ok, name: :random_server)
    end

    # Função de inicialização
    def init(:ok) do
        # Pode-se retornar o estado inicial do servidor através dessa tupla
        # Um servidor pode armazenar estados, como neste exemplo não terá estados, passa-se um map vazio
        {:ok, %{}}
    end

    # handle_info - Recebe mensagens de informações, como por exemplo, quando o processo está inicializando, ou o processo finaliza, etc
    # handle_call - Reção à uma mensagem síncrona, ou seja, caso ele receba uma mensagem, ela vai devolver a mensagem na mesma hora, então os outros processos terão que aguardar
    # handle_call - Reção à uma mensagem síncrona, ou seja, caso ele receba uma mensagem, os outros processos não terão que aguardar
    
    # Essa função recebe a mensagem enviada, e as opções da função
    def handle_cast(:write, _) do
        ElixirApplication.WriteRandomNumber.write
        
        # Significa que a mensagem não terá resposta e que nada será retornado
        {:noreplay, %{}}
    end
end
