Geralmente a aplicação tem um **processo supervisor**, como a raiz da árvore, onde eles terão processos filhos.
![Árvore de Processos](../../images/Processo%20Supervisor.png)

Em **Elixir** temos o que é conhecido como *Supervision tree*. Um Supervisor é um tipo de processo nessa árvore de processos que fica responsável por supervisionar alguns outros processos. Se estes pararem por algum motivo, o Supervisor pode iniciá-los novamente, tornando nossa aplicação mais robusta.

O funcionamento de um aplicativo em Elixir geralmente é mais performático porque os processos rodam simultâneamente no sistema.