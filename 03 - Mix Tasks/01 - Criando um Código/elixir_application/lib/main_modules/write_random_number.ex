defmodule MainModule.WriteRandomNumber do
    def write do
        # Obtêm o caminho do arquivo na pasta "private", obtendo o arquivo especificado dentro de priv
        # O ":code.priv_dir" obtêm o diretório privado de alguma aplicação
        # OBS.: Caso o caminho tenha caracteres especiais, o comando retornará um caminho inválido
        file_path = Path.join([:code.priv_dir(:elixir_application), "file.txt"])

        # A função ":rand.uniform" sorteia um número de 0 até o número especificado
        random_number = :rand.uniform(1000)

        # Irá escrever algo no arquivo especificado
        File.write!("C:/WS's/Alura/01 - Programação/05 - Elixir/03 - Elixir - Conhecendo o Ecossistema Elixir/03 - Mix Tasks/01 - Criando um Código/elixir_application/priv/number.txt", "Number: #{random_number}")
    end
end